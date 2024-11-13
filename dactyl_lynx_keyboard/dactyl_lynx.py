#!/usr/bin/env python3
import argparse
import math
import operator
from functools import reduce
from itertools import chain, pairwise
from os.path import abspath, dirname, join

from solid2 import cube, hull, sphere, text, union
from solid2.core.object_base import OpenSCADObject
from solid2.extensions.bosl2 import screws

from spkb.switch_plate import (
    mount_width,
    mount_length,
    keyswitch_length,
    keyswitch_width,
    keyswitch_depth,
    plate_thickness,
    mx_plate_with_backplate,
    mx_plate_with_board_mount,
)
from spkb.board_mount import stm32_blackpill
from spkb.keycaps import sa_double_length, sa_cap
from spkb.single_key_pcb import single_key_board
from spkb.utils import cylinder_outer, fudge_radius, nothing


class Layout:
    def __init__(self, columns=6, rows=5, wall_thickness=1.5):
        """Create a layout manager.

        :param columns: the number of columns in the layout
        :type columns: int

        :param rows: the number of rows in the layout
        :type rows: int

        :param wall_thickness: the wall thickness of the chosen socket shape
        :type wall_thickness: float
        """

        self.rows = rows
        self.columns = columns

        # Approx. height from top of the plate to the top of the shortest
        # keycap in an SA profile? Really not sure.
        self.sa_profile_key_height = 12.7

        # Cupping amounts, in radians per row/column
        self.rad_per_row = math.pi / 12
        self.rad_per_col = math.pi / 36

        # Clearance for the depth of the switch - only needed for the bottom
        # right 2x key and the top right 1x key
        self.thumb_switch_clearance = 12

        self.keyswitch_length = keyswitch_length
        self.keyswitch_width = keyswitch_width

        self.cap_top_height = plate_thickness + self.sa_profile_key_height

        self.web_post_size = 0.1
        self.web_thickness = keyswitch_depth

        self.wall_thickness = wall_thickness

    @property
    def row_radius(self):
        return (
            ((mount_length + 0.5) / 2)
            / (math.sin(self.rad_per_row / 2))
        ) + self.cap_top_height

    @property
    def column_radius(self):
        return (
            ((mount_width + 2.0) / 2)
            / (math.sin(self.rad_per_col / 2))
        ) + self.cap_top_height

    def generate_positions(self):
        """Override this to change the list of locations within the layout.
        """
        return (
            (column, row)
            for row in range(self.rows)
            for column in range(self.columns)
        )

    def column_adjust(self, column):
        """Override this method to adjust the effective column number of a given column.

        :param column: the column number to adjust
        :type column: number
        """
        return column

    def row_adjust(self, row):
        """Override this method to adjust the effective row number of a given row.

        :param row: the row number to adjust
        :type row: number
        """
        return row

    def placement_adjust(self, column, row, shape):
        """Override this method to adjust the position of the given key/location in the layout.

        :param column: the column to place the key in
        :type column: number

        :param row: the row to place the key in
        :type row: number

        :param shape: the shape to place
        """
        return shape

    def row_angle(self, row):
        """Calculate the X rotation angle for the given row.

        :param row: the row number to rotate for
        :type row: number
        """
        return math.degrees(self.rad_per_row * -row)

    def column_angle(self, column):
        """Calculate the Y rotation angle for the given column.

        :param column: the row number to rotate for
        :type column: number
        """
        return math.degrees(self.rad_per_col * -column)

    def key_place(self, column, row, shape):
        """Place a key (or other shape) in the layout.

        :param column: the column to place the key in
        :type column: number

        :param row: the row to place the key in
        :type row: number

        :param shape: the shape to place
        """
        row = self.row_adjust(row)
        row_angle = self.row_angle(row)

        row_placed_shape = shape \
            .translate((0, 0, -self.row_radius)) \
            .rotate(row_angle, (1, 0, 0)) \
            .translate((0, 0, self.row_radius))

        column = self.column_adjust(column)
        column_angle = self.column_angle(column)

        column_placed_shape = row_placed_shape \
            .translate((0, 0, -self.column_radius)) \
            .rotate(column_angle, (0, 1, 0)) \
            .translate((0, 0, self.column_radius)) \

        return self.layout_place(
            self.placement_adjust(column, row, column_placed_shape)
        )

    def layout_place(self, shape):
        """Place the layout.

        Override to adjust the placement of the entire layout.

        :param shape: the shape to place
        """
        return shape

    def place_all(self, shape_or_callback):
        """Place the given shape (or the shape returned by the given callback) at every location
        in the layout.

        :param shape_or_callback: the shape to place, or a callback that returns the shape
        :type shape_or_callback: OpenSCADObject or function(column, row) -> OpenSCADObject
        """
        if isinstance(shape_or_callback, OpenSCADObject):
            shape_callback = lambda c, r: shape_or_callback
        else:
            shape_callback = shape_or_callback

        return reduce(
            operator.add,
            (
                self.key_place(column, row, shape_callback(column, row))
                for (column, row) in self.generate_positions()
            )
        )

    def caps(self):
        return self.place_all(sa_cap(1))

    def web_corner(self, column, row, left, top, column_span=1, row_span=1, z_offset=0, thickness=None):
        """Return a tiny block encompassing the given corner of the given key position, for
        building the "web" between the keys.

        :param column: the column of the key to create the corner block at
        :type column: number
        :param row: the row of the key to create the corner block at
        :type row: number
        :param left: whether to create the block on the left side (True) or the right side (False)
        :type left: bool
        :param top: whether to create the block on the top side (True) or the bottom side (False)
        :type top: bool
        :param column_span: the number of columns occupied by the key
        :type column_span: number
        :param row_span: the number of rows occupied by the key
        :type row_span: number
        :param z_offset: the offset in the Z direction of the corner block (before placing at the key position)
        :type z_offset: number
        :param thickness: the thickness of the web; if None, default to self.web_thickness
        :type thickness: number

        Example:
        web_corner(1, 1, left=True, top=True) will create the block at the position marked
        with an X:
        ┌───┐ ┌───┐
        │0,0│ │1,0│
        └───┘ └───┘

        ┌───┐ X━━━┓
        │0,1│ ┃1,1┃
        └───┘ ┗━━━┛
        """
        if thickness is None:
            thickness = self.web_thickness
        post = cube(
            (self.web_post_size, self.web_post_size, thickness),
            center=True
        ).translate((0, 0, plate_thickness - (thickness / 2)))

        x_move_amount = (self.keyswitch_width + ((column_span - 1) * 24) - self.web_post_size) / 2 + self.wall_thickness
        y_move_amount = (self.keyswitch_length + ((row_span - 1) * 24) - self.web_post_size) / 2 + self.wall_thickness

        return self.key_place(
            column,
            row,
            post.translate((
                -x_move_amount if left else x_move_amount,
                y_move_amount if top else -y_move_amount,
                z_offset
            ))
        )

    def web_left_of(self, column, row, z_offset=0, thickness=None):
        """Return the "web" between the key at the given row/column and the neighboring one in the
        column to the left.

        :param column: the column of the key to create the web at
        :type column: number
        :param row: the row of the key to create the web at
        :type row: number
        :param z_offset: the offset in the Z direction of the corner blocks (before placing at the key positions)
        :type z_offset: number
        :param thickness: the thickness of the web; if None, default to self.web_thickness
        :type thickness: number

        Example:
        web_top_left_of(1, 1) will create the web at the position marked with an X:
        ┌───┐ ┌───┐
        │0,0│ │1,0│
        └───┘ └───┘

        ┌───┐┄┏━━━┓
        │0,1│X┃1,1┃
        └───┘┄┗━━━┛
        """
        return hull()(
            self.web_corner(column, row, left=True, top=True, z_offset=z_offset, thickness=thickness),
            self.web_corner(column, row, left=True, top=False, z_offset=z_offset, thickness=thickness),
            self.web_corner(column - 1, row, left=False, top=False, z_offset=z_offset, thickness=thickness),
            self.web_corner(column - 1, row, left=False, top=True, z_offset=z_offset, thickness=thickness),
        )

    def web_above(self, column, row, z_offset=0, thickness=None):
        """Return the "web" between the key at the given row/column and the neighboring one in the
        row above.

        :param column: the column of the key to create the web at
        :type column: number
        :param row: the row of the key to create the web at
        :type row: number
        :param z_offset: the offset in the Z direction of the corner blocks (before placing at the key positions)
        :type z_offset: number
        :param thickness: the thickness of the web; if None, default to self.web_thickness
        :type thickness: number

        Example:
        web_above(1, 1) will create the web at the position marked with an X:
        ┌───┐ ┌───┐
        │0,0│ │1,0│
        └───┘ └───┘
              ┆ X ┆
        ┌───┐ ┏━━━┓
        │0,1│ ┃1,1┃
        └───┘ ┗━━━┛
        """
        return hull()(
            self.web_corner(column, row, left=True, top=True, z_offset=z_offset, thickness=thickness),
            self.web_corner(column, row, left=False, top=True, z_offset=z_offset, thickness=thickness),
            self.web_corner(column, row - 1, left=False, top=False, z_offset=z_offset, thickness=thickness),
            self.web_corner(column, row - 1, left=True, top=False, z_offset=z_offset, thickness=thickness),
        )

    def web_top_left_of(self, column, row, z_offset=0, thickness=None):
        """Return the "web" between the key at the given row/column and the neighboring ones in the
        column to the left and/or the row above.

        :param column: the column of the key to create the web at
        :type column: number
        :param row: the row of the key to create the web at
        :type row: number
        :param z_offset: the offset in the Z direction of the corner blocks (before placing at the key positions)
        :type z_offset: number
        :param thickness: the thickness of the web; if None, default to self.web_thickness
        :type thickness: number

        Example:
        web_top_left_of(1, 1) will create the web at the position marked with an X:
        ┌───┐ ┌───┐
        │0,0│ │1,0│
        └───┘┄└───┘
            ┆X┆
        ┌───┐┄┏━━━┓
        │0,1│ ┃1,1┃
        └───┘ ┗━━━┛
        """
        return hull()(
            self.web_corner(column, row, left=True, top=True, z_offset=z_offset, thickness=thickness),
            self.web_corner(column - 1, row, left=False, top=True, z_offset=z_offset, thickness=thickness),
            self.web_corner(column - 1, row - 1, left=False, top=False, z_offset=z_offset, thickness=thickness),
            self.web_corner(column, row - 1, left=True, top=False, z_offset=z_offset, thickness=thickness),
        )

    def web_all(self, z_offset=0, thickness=None):
        """Return the complete "web" between all key positions in this layout.thumb_place_all

        :param z_offset: the offset in the Z direction of the corner blocks (before placing at the key positions)
        :type z_offset: number
        :param thickness: the thickness of the web; if None, default to self.web_thickness
        :type thickness: number
        """
        return reduce(
            operator.add,
            chain(
                (
                    self.web_top_left_of(column, row, z_offset=z_offset, thickness=thickness)
                    for (column, row) in self.generate_positions()
                    if column > 0 and row > 0
                ),
                (
                    self.web_left_of(column, row, z_offset=z_offset, thickness=thickness)
                    for (column, row) in self.generate_positions()
                    if column > 0
                ),
                (
                    self.web_above(column, row, z_offset=z_offset, thickness=thickness)
                    for (column, row) in self.generate_positions()
                    if row > 0
                ),
            )
        )


class FingerWellLayout(Layout):
    def __init__(self, columns=6, rows=5, use_1_5u_keys=True, wall_thickness=1.5):
        super(FingerWellLayout, self).__init__(columns=columns, rows=rows, wall_thickness=wall_thickness)

        self.use_1_5u_keys = use_1_5u_keys

    def generate_positions(self):
        """Generate the list of locations within the layout.
        """
        return (
            (column, row)
            for row in range(self.rows)
            for column in range(self.columns)
            if (column != 0) or (row != 4)
        )

    def column_adjust(self, column):
        """Adjust the effective column number of a given column to account for 1.5u keys on the
        outside columns.

        :param column: the column number to adjust
        :type column: number
        """
        if self.use_1_5u_keys and column >= 5:
            return column + (column - 4) * 0.25
        else:
            return column

    def row_angle(self, row):
        """Calculate the X rotation angle for the given row.

        :param row: the row number to rotate for
        :type row: number
        """
        return math.degrees(self.rad_per_row * (2 - row))

    def column_angle(self, column):
        """Calculate the Y rotation angle for the given column.

        :param column: the row number to rotate for
        :type column: number
        """
        return math.degrees(self.rad_per_col * (2 - column))

    def placement_adjust(self, column, row, shape):
        """Adjust the position of the given key/location in the layout.

        :param column: the column to place the key in
        :type column: number

        :param row: the row to place the key in
        :type row: number

        :param shape: the shape to place
        """
        if column == 2:
            return shape.translate((0, 6.82, -4.0))
        elif column >= 4:
            return shape.translate((0, -11.8, 7.64))
        else:
            return shape

    def layout_place(self, shape):
        """Place the layout.

        :param shape: the shape to place
        """
        return shape \
            .rotate(math.degrees(math.pi / 10), (0, 1, 0)) \
            .rotate(math.degrees(math.pi / 10), (1, 0, 0)) \
            .translate((0, 0, 26.3))

    def web_all(self, z_offset=0, thickness=None):
        """Return the complete "web" between all key positions in this layout.

        :param z_offset: the offset in the Z direction of the corner blocks (before placing at the key positions)
        :type z_offset: number
        :param thickness: the thickness of the web; if None, default to self.web_thickness
        :type thickness: number
        """
        return reduce(
            operator.add,
            chain(
                (
                    self.web_top_left_of(column, row, z_offset=z_offset, thickness=thickness)
                    for (column, row) in self.generate_positions()
                    if column > 0 and row > 0 and (column != 1 or row != 4)
                ),
                (
                    self.web_left_of(column, row, z_offset=z_offset, thickness=thickness)
                    for (column, row) in self.generate_positions()
                    if column > 0 and (column != 1 or row != 4)
                ),
                (
                    self.web_above(column, row, z_offset=z_offset, thickness=thickness)
                    for (column, row) in self.generate_positions()
                    if row > 0
                ),
            )
        )


class ThumbWellLayout(Layout):
    def __init__(self, columns=3, rows=3, wall_thickness=1.5):
        super(ThumbWellLayout, self).__init__(columns=columns, rows=rows, wall_thickness=wall_thickness)

        # Cupping amounts, in radians per row/column
        self.rad_per_row = math.pi / 12
        self.rad_per_col = math.pi / 8

        self.placement_transform = (-54, -72, 4.3)

    def generate_positions(self):
        """Generate the list of locations within the layout.
        """
        return (
            # (column, row)
            (0, -1),
            (0, 1/2), # 2u key
            (1, -1),
            (1, 0),
            (1, 1),
            (2, -1),
            (2, 0),
            (2, 1),
        )

    def placement_adjust(self, column, row, shape):
        """Adjust the position of the given key/location in the layout.

        :param column: the column to place the key in
        :type column: number

        :param row: the row to place the key in
        :type row: number

        :param shape: the shape to place
        """
        if (isinstance(row, float) and not row.is_integer()) or (isinstance(column, float) and not column.is_integer()):
            return shape.translate((0, 0, 1))
        else:
            return shape

    def layout_place(self, shape):
        """Place the layout.

        :param shape: the shape to place
        """
        return shape \
            .translate((mount_width, 0, 0)) \
            .rotate(math.degrees(math.pi / 2.8), (0, 1, 0)) \
            .rotate(math.degrees(math.pi * 9/32), (0, 0, 1)) \
            .rotate(math.degrees(math.pi / 14), (1, 1, 0)) \
            .rotate(math.degrees(math.pi / (-11/6)), (-1, 1, 0)) \
            .rotate(math.degrees(math.pi / -20), (0, 1, 0)) \
            .rotate(15, (1, 1, 1)) \
            .translate(self.placement_transform)

    def web_all(self, z_offset=0, thickness=None):
        """Return the complete "web" between all key positions in this layout.

        :param z_offset: the offset in the Z direction of the corner blocks (before placing at the key positions)
        :type z_offset: number
        :param thickness: the thickness of the web; if None, default to self.web_thickness
        :type thickness: number
        """
        return reduce(
            operator.add,
            chain(
                (
                    self.web_top_left_of(column, row, z_offset=z_offset, thickness=thickness)
                    for (column, row) in self.generate_positions()
                    if column > 0 and row > -1 and (column, row) not in (
                        (1, 0),
                        (1, 1),
                    )
                ),
                (
                    self.web_left_of(column, row, z_offset=z_offset, thickness=thickness)
                    for (column, row) in self.generate_positions()
                    if column > 0 and (column, row) not in (
                        (1, 0),
                        (1, 1),
                    )
                ),
                (
                    self.web_above(column, row, z_offset=z_offset, thickness=thickness)
                    for (column, row) in self.generate_positions()
                    if row > -1 and (column, row) not in (
                        (0, 1/2),
                        (0, -1),
                    )
                ),
                [
                    hull()(
                        self.web_corner(0, 1/2, left=False, top=True, row_span=2, z_offset=z_offset, thickness=thickness),
                        self.web_corner(0, -1, left=False, top=False, z_offset=z_offset, thickness=thickness),
                        self.web_corner(1, -1, left=True, top=False, z_offset=z_offset, thickness=thickness),
                        self.web_corner(1, 0, left=True, top=True, z_offset=z_offset, thickness=thickness),
                    ),
                    hull()(
                        self.web_corner(0, -1, left=True, top=False, z_offset=z_offset, thickness=thickness),
                        self.web_corner(0, -1, left=False, top=False, z_offset=z_offset, thickness=thickness),
                        self.web_corner(0, 1/2, left=False, top=True, row_span=2, z_offset=z_offset, thickness=thickness),
                        self.web_corner(0, 1/2, left=True, top=True, row_span=2, z_offset=z_offset, thickness=thickness),
                    ),
                    hull()(
                        self.web_corner(0, 1/2, left=False, top=False, row_span=2, z_offset=z_offset, thickness=thickness),
                        self.web_corner(1, 1, left=True, top=True, z_offset=z_offset, thickness=thickness),
                        self.web_corner(1, 1, left=True, top=False, z_offset=z_offset, thickness=thickness),
                    ),
                    hull()(
                        self.web_corner(0, 1/2, left=False, top=False, row_span=2, z_offset=z_offset, thickness=thickness),
                        self.web_corner(0, 1/2, left=False, top=True, row_span=2, z_offset=z_offset, thickness=thickness),
                        self.web_corner(1, 0, left=True, top=False, z_offset=z_offset, thickness=thickness),
                        self.web_corner(1, 1, left=True, top=True, z_offset=z_offset, thickness=thickness),
                    ),
                    hull()(
                        self.web_corner(0, 1/2, left=False, top=True, row_span=2, z_offset=z_offset, thickness=thickness),
                        self.web_corner(1, 0, left=True, top=False, z_offset=z_offset, thickness=thickness),
                        self.web_corner(1, 0, left=True, top=True, z_offset=z_offset, thickness=thickness),
                    ),
                ],
            )
        )


class LCDMount:
    def __init__(self):
        self.lcdSize = (27.8, 39.3, 1.2)          # (X, Y, Z)
        self.lcdMountingHoleCenters = (22.5, 34)  # (X, Y)
        self.marginWidth = (0.5, 1.1)             # (X, Y)
        self.frameThickness = (4, 3)              # (X/Y, Z)
        self.cornerSize = 3.75

    def place(self, shape):
        return (
            shape
            .rotate(20, (1, 0, 0))
            .translate((-25, 48, 50))
        )

    def frame(self):
        cornerBlockSize = self.cornerSize + self.frameThickness[0] / 2
        cornerBlockThickness = self.frameThickness[1] - self.lcdSize[2]

        cornerBlockOffset = (  # X/Y, Z
            (self.cornerSize - cornerBlockSize) / 2,
            (self.frameThickness[1] - cornerBlockThickness) / 2
        )

        corner = (
            cube((cornerBlockSize, cornerBlockSize, cornerBlockThickness), center=True)
            .translate((cornerBlockOffset[0], cornerBlockOffset[0], 0))
            - screws.screw_hole("M2x1", length=cornerBlockThickness + 0.01, thread=False,
                                bevel=True, blunt_start=True, _fn=32)
        ).translate((0, 0, cornerBlockOffset[1]))

        return self.place(
            cube((
                self.lcdSize[0] + (self.frameThickness[0] - self.marginWidth[0]) * 2,
                self.lcdSize[1] + (self.frameThickness[0] - self.marginWidth[1]) * 2,
                self.frameThickness[1]
            ), center=True)
            - cube((
                self.lcdSize[0] - self.marginWidth[0] * 2,
                self.lcdSize[1] - self.marginWidth[1] * 2,
                self.frameThickness[1] + 1
            ), center=True)
            - cube((
                self.lcdSize[0],
                self.lcdSize[1],
                self.frameThickness[1]
            ), center=True)
            .translate((0, 0, -self.frameThickness[1] + self.lcdSize[2]))

            + corner
            .translate((-self.lcdMountingHoleCenters[0] / 2, -self.lcdMountingHoleCenters[1] / 2, 0))

            + corner
            .rotate((0, 0, 90))
            .translate((self.lcdMountingHoleCenters[0] / 2, -self.lcdMountingHoleCenters[1] / 2, 0))

            + corner
            .rotate((0, 0, 180))
            .translate((self.lcdMountingHoleCenters[0] / 2, self.lcdMountingHoleCenters[1] / 2, 0))

            + corner
            .rotate((0, 0, 270))
            .translate((-self.lcdMountingHoleCenters[0] / 2, self.lcdMountingHoleCenters[1] / 2, 0))
        )

    def mount(self, target):
        return hull()(
            self.place(
                cube((
                    self.lcdSize[0] + (self.frameThickness[0] - self.marginWidth[0]) * 2,
                    0.01,
                    self.frameThickness[1]
                ), center=True)
                .translate((0, -self.lcdSize[1] / 2 - (self.frameThickness[0] - self.marginWidth[1]), 0))
            ),
            target,
        )


class MiniDINConnectorMount:
    def __init__(self):
        self.connectorRadius = 11.4 / 2
        self.innerFrameWidth = 2
        self.innerFrameThickness = 1.25
        self.outerFrameWidth = 3
        self.outerFrameThickness = 4

    def outerRadius(self):
        return self.connectorRadius + self.innerFrameWidth + self.outerFrameWidth

    def frame(self):
        return (
            cylinder_outer(self.outerRadius(), self.outerFrameThickness)
        )

    def hole(self):
        return (
            cylinder_outer(self.outerRadius() - self.outerFrameWidth, self.outerFrameThickness * 8, center=True)
            - cylinder_outer(self.outerRadius(), self.innerFrameThickness)
            .translate((0, 0, self.outerFrameWidth / 2))
            + cylinder_outer(self.connectorRadius, self.innerFrameThickness * 8, center=True)
        )


class TrackPointMount:
    def __init__(self):
        self.trackpoint_stem_hole_radius_lower = 7.8 / 2
        self.trackpoint_stem_hole_radius_upper = 6.5 / 2
        self.trackpoint_screw_hole_radius = 2 / 2
        self.trackpoint_screw_hole_offset = 18.75 / 2
        self.trackpoint_mount_thickness = plate_thickness * 1.5

        self.trackpoint_stem_radius = 0.6
        self.trackpoint_stem_length = 25  # Slightly problematic since only barbells seem to come in this length
        self.trackpoint_ball_radius = 1.5
        self.trackpoint_stem_base_height = 2

        self.trackpoint_board_size = (23.5, 17, 1)

    def trackpoint_holes(self):
        return (
            cylinder_outer(self.trackpoint_stem_hole_radius_lower, 2, center=True)
            .translate((0, 0, 0.5 - self.trackpoint_mount_thickness))
            + cylinder_outer(self.trackpoint_stem_hole_radius_upper, self.trackpoint_mount_thickness * 2.2, center=True)
            + cylinder_outer(self.trackpoint_screw_hole_radius, self.trackpoint_mount_thickness * 2.2, center=True)
            .translate((self.trackpoint_screw_hole_offset, 0, 0))
            + cylinder_outer(self.trackpoint_screw_hole_radius, self.trackpoint_mount_thickness * 2.2, center=True)
            .translate((-self.trackpoint_screw_hole_offset, 0, 0))
            + cube(self.trackpoint_board_size, center=True)
            .translate((0, 0, -self.trackpoint_mount_thickness))
        ).down(2)

    def trackpoint_mount(self):
        screw_surround_radius = self.trackpoint_screw_hole_radius * 2.5
        cutout_x_offset = 7
        cutout_y_offset = screw_surround_radius + 5
        return (
            (
                # cylinder_outer(8, self.trackpoint_mount_thickness, center=True)
                hull()(
                    cylinder_outer(screw_surround_radius, self.trackpoint_mount_thickness, center=True)
                    .translate((self.trackpoint_screw_hole_offset, 0, 0)),
                    cylinder_outer(screw_surround_radius, self.trackpoint_mount_thickness, center=True)
                    .translate((-self.trackpoint_screw_hole_offset, 0, 0))
                )
            ).translate((0, 0, self.trackpoint_mount_thickness / -2))
            - cube((10, 10, 20), center=True).translate((cutout_x_offset, cutout_y_offset, 0))
            - cube((10, 10, 20), center=True).translate((-cutout_x_offset, cutout_y_offset, 0))
            - cube((10, 10, 20), center=True).translate((cutout_x_offset, -cutout_y_offset, 0))
            - cube((10, 10, 20), center=True).translate((-cutout_x_offset, -cutout_y_offset, 0))
        ).down(2).color((0, 1, 0))

    def trackpoint_shape(self):
        return (
            (
                cylinder_outer(self.trackpoint_stem_radius, self.trackpoint_stem_length, center=True)
                + sphere(self.trackpoint_ball_radius, _fn=12).translate((0, 0, self.trackpoint_stem_length / 2))
            ).translate((0, 0, self.trackpoint_stem_length / 2 - self.trackpoint_mount_thickness + self.trackpoint_stem_base_height))
        ).down(2).color((0.8, 0.8, 0.8))


class KeyboardAssembly:
    def __init__(self, columns=6, rows=5, use_1_5u_keys=False, use_color=False, socket_shape=mx_plate_with_backplate, wall_thickness=1.5):
        self.use_color = use_color
        self.socket_shape = socket_shape
        self.wall_thickness = wall_thickness

        self.finger_layout = FingerWellLayout(columns=columns, rows=rows, use_1_5u_keys=use_1_5u_keys, wall_thickness=wall_thickness)
        self.thumb_layout = ThumbWellLayout(wall_thickness=wall_thickness)

        self.connector_mount = MiniDINConnectorMount()
        self.trackpoint_mount = TrackPointMount()

        self.screen_size = (27.75, 39.25)
        self.screen_hole_centers = (22.5, 34.05)

        self.tenting_nut = (
            cube((10, 10, 10), center=True)
            - screws.screw_hole("M6x1", length=10.01, thread=True, bevel=True, blunt_start=True, _fn=32)
        )

        self.tenting_nut_unthreaded = (
            cube((10, 10, 10), center=True)
            - screws.screw_hole("M6x1", length=10.01, thread=False, bevel=True, blunt_start=True, _fn=32)
        )

        self.left_side = False

        self.bottom_thumb_nuts = False

        self.bottom_cover_offset = 11
        self.bottom_cover_edge_protusion = self.finger_layout.keyswitch_length - 1
        self.bottom_cover_thickness = 3
        self.bottom_cover_post_size = 0.2
        self.bottom_cover_magnet_mount_thickness = 1.5
        self.bottom_cover_magnet_radius = 2.5
        self.bottom_cover_magnet_thickness = 3

    def transform_finger_nut1(self, shape):
        return shape \
            .rotate(20, (1, 0, 0)) \
            .translate((64, 45, 45))

    def transform_finger_nut2(self, shape):
        return shape \
            .rotate(-15, (1, 0, 0)) \
            .rotate(-5, (0, 1, 0)) \
            .translate((78, -49, 10))

    def transform_finger_nut3(self, shape):
        return shape \
            .rotate(15, (0, 1, 0)) \
            .rotate(9, (1, 0, 0)) \
            .translate((-54, 16, 49))

    def transform_board(self, shape):
        return shape \
            .rotate(90, (0, 0, 1)) \
            .rotate(-120, (1, 0, 0)) \
            .rotate(17, (0, 1, 0)) \
            .translate((-19, 53, 74.3))

    def transform_connector_mount(self, shape):
        return self.finger_layout.key_place(
            0,
            0,
            shape
            .rotate(-90, (0, 1, 0))
            .translate((
                (self.finger_layout.keyswitch_width + self.connector_mount.outerFrameThickness) / -2 - 1.5,
                0,
                -self.connector_mount.outerRadius() - 2
            ))
        )

    def transform_trackpoint_mount(self, shape):
        return self.finger_layout.key_place(0.5, 2.5, shape)

    def transform_thumb_nut1(self, shape):
        return shape \
            .rotate(-10, (1, 0, 0)) \
            .rotate(5, (0, 1, 0)) \
            .rotate(48, (0, 0, 1)) \
            .translate((20, -25, 9)) \
            .rotate(10, (1, 1, 1)) \
            .translate(self.thumb_layout.placement_transform)

    def transform_thumb_nut2(self, shape):
        return shape \
            .rotate(10, (1, 0, 0)) \
            .rotate(68, (0, 0, 1)) \
            .translate((-32, 30, 4)) \
            .rotate(10, (1, 1, 1)) \
            .translate(self.thumb_layout.placement_transform)

    def transform_thumb_nut3(self, shape):
        return shape \
            .rotate(-15, (1, 0, 0)) \
            .rotate(-20, (0, 0, 1)) \
            .rotate(-10, (0, 1, 0)) \
            .translate((-3, 57, 33.2)) \
            .rotate(10, (1, 1, 1)) \
            .translate(self.thumb_layout.placement_transform)

    def switch_socket(self, column, row):
        shape = self.socket_shape(column, row)
        if isinstance(row, float) and not row.is_integer():
            plate_height = (sa_double_length - self.finger_layout.keyswitch_length + 0.4) / 2
            # TODO: Subtract stabilizer mount holes; see dactyl.clj line 348
            stabilizer_mount = cube(
                self.finger_layout.keyswitch_width + self.wall_thickness * 2,
                plate_height,
                self.thumb_layout.web_thickness,
                center=True
            ).translate(
                0,
                (plate_height + self.finger_layout.keyswitch_length) / 2 + self.wall_thickness,
                plate_thickness - self.thumb_layout.web_thickness / 2
            )
            shape = (
                shape
                + stabilizer_mount
                + stabilizer_mount.mirror(0, 1, 0)
            )
        elif isinstance(column, float) and not column.is_integer():
            plate_width = (sa_double_length - self.finger_layout.keyswitch_width + 0.4) / 2
            # TODO: Subtract stabilizer mount holes; see dactyl.clj line 348
            stabilizer_mount = cube(
                plate_width,
                self.finger_layout.keyswitch_length + self.wall_thickness * 2,
                self.thumb_layout.web_thickness,
                center=True
            ).translate(
                (plate_width + self.finger_layout.keyswitch_width) / 2 + self.wall_thickness,
                0,
                plate_thickness - self.thumb_layout.web_thickness / 2
            )
            shape = (
                shape
                + stabilizer_mount
                + stabilizer_mount.mirror(0, 1, 0)
            )

        if self.left_side:
            return shape.mirror((1, 0, 0))
        return shape

    def switch_bottom_cover(self, column, row):
        if isinstance(row, float) and not row.is_integer():
            return cube(
                self.finger_layout.keyswitch_width + self.wall_thickness * 2,
                sa_double_length,
                self.bottom_cover_thickness,
                center=True
            ).translate(
                0,
                0,
                plate_thickness - self.thumb_layout.web_thickness / 2 - self.bottom_cover_offset - self.bottom_cover_thickness / 2
            )

        elif isinstance(column, float) and not column.is_integer():
            return cube(
                sa_double_length,
                self.finger_layout.keyswitch_length + self.wall_thickness * 2,
                self.bottom_cover_thickness,
                center=True
            ).translate(
                0,
                0,
                plate_thickness - self.thumb_layout.web_thickness / 2 - self.bottom_cover_offset - self.bottom_cover_thickness / 2
            )

        return cube(
            self.finger_layout.keyswitch_width + self.wall_thickness * 2,
            self.finger_layout.keyswitch_length + self.wall_thickness * 2,
            self.bottom_cover_thickness,
            center=True
        ).translate(0, 0, -self.bottom_cover_offset - self.bottom_cover_thickness / 2)

    def finger_part(self):
        shape = (
            self.finger_layout.place_all(self.switch_socket)
            + self.finger_layout.web_all()

            + self.transform_board(stm32_blackpill.render(distance_from_surface=8))
            + hull()(
                self.transform_board(
                    cube((60, 120, 8), center=True)
                    & stm32_blackpill.back_mounting_posts(distance_from_surface=8)
                ),
                self.finger_layout.web_corner(3, 0, left=False, top=True),
                self.finger_layout.web_corner(3, 0, left=True, top=True),
            )
            - self.transform_board(
                cube((4, 6, 10), center=True)
                .translate((6, -46, 0))
            )
            + hull()(
                self.transform_board(
                    cube((60, 120, 6), center=True)
                    & stm32_blackpill.front_mounting_posts(distance_from_surface=8)
                ),
                self.finger_layout.web_corner(1, 0, left=True, top=True),
                self.finger_layout.web_corner(1, 0, left=False, top=True),
            )
            + self.transform_board(
                hull()(
                    cube((60, 120, 2), center=True)
                    & stm32_blackpill.back_mounting_posts(distance_from_surface=8),
                    cube((60, 120, 2), center=True)
                    & stm32_blackpill.front_mounting_posts(distance_from_surface=8)
                )
                + cube((11, 2.9, 13), center=True)
                .translate((0, 3 / 2, 13 / 2))
                - stm32_blackpill.board_profile(distance_from_surface=8)

                # Holes for buttons on RP2040 TYPE-C 16MB
                - cube((4, 6, 10), center=True)
                .translate((-5 if self.left_side else 5, -22, 0))
                - cube((4, 6, 10), center=True)
                .translate((-6, -46, 0))
                - cube((4, 6, 10), center=True)
                .translate((6, -46, 0))
            )

            + hull() (
                self.transform_connector_mount(self.connector_mount.frame()),
                self.finger_layout.web_corner(0, 0, left=True, top=False),
                self.finger_layout.web_corner(0, 0, left=True, top=True),
                self.cover_edge_corner(side=True, column=0, row=1, left=True, top=True, top_shell=True, offset_along_edge=self.bottom_cover_post_size),
                self.finger_layout.web_corner(column=0, row=1, left=True, top=True),
            )
            + self.finger_cover_edge(top_shell=True)
            - self.place_cover_magnets(self.cover_magnet_hole(top_shell=True))
            - self.transform_connector_mount(self.connector_mount.hole())
        )

        if not self.left_side:
            shape += self.transform_trackpoint_mount(self.trackpoint_mount.trackpoint_mount())
            shape -= self.transform_trackpoint_mount(self.trackpoint_mount.trackpoint_holes())

        if self.use_color:
            return shape.color((0.1, 0.1, 0.1))

        return shape

    def cover_magnet_mount(self, top_shell):
        """Create the mounting shape for a magnet to attach the bottom cover.

        :param top_shell: whether this is for the top shell (True) or for the bottom cover (False)
        :type top_shell: bool
        """
        radius = self.bottom_cover_magnet_radius + self.bottom_cover_magnet_mount_thickness

        # Fudge the sphere radius as if it had 12 segments instead of 16, in order to make it line up a bit better with
        # the cylinder. It's still not perfect.
        sphere_radius = fudge_radius(radius, segments=12)

        shape = (
            cylinder_outer(radius, self.bottom_cover_magnet_thickness, center=True)
            .up(self.bottom_cover_magnet_thickness / 2)
            + (sphere(sphere_radius, _fn=16) - cube(radius * 2, radius * 2, radius * 2, center=True).down(radius))
            .up(self.bottom_cover_magnet_thickness)
        )

        if not top_shell:
            return shape.mirror((0, 0, 1))
        return shape

    def cover_magnet_hole(self, top_shell):
        """Create the hole for a magnet to attach the bottom cover.

        :param top_shell: whether this is for the top shell (True) or for the bottom cover (False)
        :type top_shell: bool
        """
        return cylinder_outer(
            self.bottom_cover_magnet_radius,
            self.bottom_cover_magnet_thickness * 2,
            center=True
        )

    def place_cover_magnets(self, shape):
        """Place the given shape at the location of each cover attachment magnet.

        :param shape: the shape to place
        """
        shape = shape.down(5)
        offset = self.finger_layout.keyswitch_length

        return (
            self.finger_layout.key_place(column=0, row=0, shape=shape.forward(offset))
            + self.finger_layout.key_place(column=0, row=2, shape=shape.left(offset))
            + self.finger_layout.key_place(column=1, row=4, shape=shape.back(offset))
            + self.finger_layout.key_place(column=5, row=4, shape=shape.back(offset))
            + self.finger_layout.key_place(column=5, row=2, shape=shape.right(offset))
            + self.finger_layout.key_place(column=5, row=0, shape=shape.forward(offset))
        )

    def cover_edge_corner(self, side, column, row, left, top, top_shell, offset_along_edge=0, outer=False):
        """Generate a corner post for generating the edges of the top shell or bottom cover.

        :param side: whether to create a block for the left or right edge (True), or for the top or bottom edge (False)
        :type side: bool
        :param column: the column of the key to create the corner block at
        :type column: number
        :param row: the row of the key to create the corner block at
        :type row: number
        :param left: whether to create the block on the left side (True) or the right side (False)
        :type left: bool
        :param top: whether to create the block on the top side (True) or the bottom side (False)
        :type top: bool
        :param top_shell: whether to create a block for the top shell (True) or for the bottom cover (False)
        :type top_shell: bool
        :param offset_along_edge: the offset along the edge (either X or Y depending on whether `side` is True)
        :type offset_along_edge: number
        :param outer: whether to create a tiny block at the very outer edge of the edge (True) or one that is the full
        thickness of the edge (False)
        :type outer: bool

        :param top_shell: whether this is for the top shell (True) or for the bottom cover (False)
        :type top_shell: bool
        """
        vertical_offset = 5 + self.bottom_cover_post_size / (-2 if top_shell else 2)

        edge_post = cube(
            self.bottom_cover_thickness if side and not outer else self.bottom_cover_post_size,
            self.bottom_cover_thickness if not side and not outer else self.bottom_cover_post_size,
            self.bottom_cover_post_size,
            center=True
        ).down(vertical_offset)

        if side:
            post = (
                edge_post
                .left(
                    (
                        self.bottom_cover_edge_protusion
                        + ((self.bottom_cover_thickness - self.bottom_cover_post_size) / 2 if outer else 0)
                    )
                    * (1 if left else -1)
                )
                .forward((10 if top else -10) + offset_along_edge)
            )
        else:
            post = (
                edge_post
                .forward(
                    (
                        self.bottom_cover_edge_protusion
                        + ((self.bottom_cover_thickness - self.bottom_cover_post_size) / 2 if outer else 0)
                    )
                    * (1 if top else -1)
                )
                .left((10 if left else -10) + offset_along_edge)
            )

        return self.finger_layout.key_place(column, row, post)

    def generate_cover_edge_corners(self, top_shell):
        """Generate the nested tuple of corners used with `hull()` to generate the edges of the top shell or bottom
        cover.

        :param top_shell: whether this is for the top shell (True) or for the bottom cover (False)
        :type top_shell: bool
        """
        web_corner_kwargs = {}
        if not top_shell:
            web_corner_kwargs = {
                'z_offset': -self.bottom_cover_offset - self.bottom_cover_thickness,
                'thickness': self.bottom_cover_thickness,
            }

        return (
            (
                (
                    self.cover_edge_corner(side=True, column=0, row=1, left=True, top=True, top_shell=top_shell),
                    self.finger_layout.web_corner(column=0, row=1, left=True, top=True, **web_corner_kwargs),
                ),
                (
                    self.cover_edge_corner(side=True, column=0, row=1, left=True, top=False, top_shell=top_shell),
                    self.finger_layout.web_corner(column=0, row=1, left=True, top=False, **web_corner_kwargs),
                ),
                (
                    self.cover_edge_corner(side=True, column=0, row=2, left=True, top=True, top_shell=top_shell),
                    self.finger_layout.web_corner(column=0, row=2, left=True, top=True, **web_corner_kwargs),
                ),
                (
                    self.cover_edge_corner(side=True, column=0, row=2, left=True, top=False, top_shell=top_shell),
                    self.finger_layout.web_corner(column=0, row=2, left=True, top=False, **web_corner_kwargs),
                ),
                (
                    self.cover_edge_corner(side=True, column=0, row=3, left=True, top=True, top_shell=top_shell),
                    self.finger_layout.web_corner(column=0, row=3, left=True, top=True, **web_corner_kwargs),
                ),
                (
                    self.cover_edge_corner(side=True, column=0, row=3, left=True, top=False, offset_along_edge=7, top_shell=top_shell),
                    self.finger_layout.web_corner(column=0, row=3, left=True, top=False, **web_corner_kwargs),
                ),
            ),
            (
                (
                    self.cover_edge_corner(side=False, column=1, row=4, left=True, top=False, offset_along_edge=-7, top_shell=top_shell),
                    self.finger_layout.web_corner(column=1, row=4, left=True, top=False, **web_corner_kwargs),
                ),
                (
                    self.cover_edge_corner(side=False, column=1, row=4, left=False, top=False, offset_along_edge=-3, top_shell=top_shell),
                    self.finger_layout.web_corner(column=1, row=4, left=False, top=False, **web_corner_kwargs),
                ),
                (
                    self.cover_edge_corner(side=False, column=2, row=4, left=True, top=False, offset_along_edge=-3, top_shell=top_shell),
                    self.finger_layout.web_corner(column=2, row=4, left=True, top=False, **web_corner_kwargs),
                ),
                (
                    self.cover_edge_corner(side=False, column=2, row=4, left=False, top=False, offset_along_edge=3, top_shell=top_shell),
                    self.finger_layout.web_corner(column=2, row=4, left=False, top=False, **web_corner_kwargs),
                ),
                (
                    self.cover_edge_corner(side=False, column=3, row=4, left=True, top=False, offset_along_edge=3, top_shell=top_shell),
                    self.finger_layout.web_corner(column=3, row=4, left=True, top=False, **web_corner_kwargs),
                ),
                (
                    self.cover_edge_corner(side=False, column=3, row=4, left=False, top=False, offset_along_edge=3, top_shell=top_shell),
                    self.finger_layout.web_corner(column=3, row=4, left=False, top=False, **web_corner_kwargs),
                ),
                (
                    self.cover_edge_corner(side=False, column=4, row=4, left=True, top=False, offset_along_edge=3, top_shell=top_shell),
                    self.finger_layout.web_corner(column=4, row=4, left=True, top=False, **web_corner_kwargs),
                ),
                (
                    self.cover_edge_corner(side=False, column=4, row=4, left=False, top=False, top_shell=top_shell),
                    self.finger_layout.web_corner(column=4, row=4, left=False, top=False, **web_corner_kwargs),
                ),
                (
                    self.cover_edge_corner(side=False, column=5, row=4, left=True, top=False, top_shell=top_shell),
                    self.finger_layout.web_corner(column=5, row=4, left=True, top=False, **web_corner_kwargs),
                ),
                (
                    self.cover_edge_corner(side=False, column=5, row=4, left=False, top=False, offset_along_edge=-2, top_shell=top_shell),
                    self.finger_layout.web_corner(column=5, row=4, left=False, top=False, **web_corner_kwargs),
                ),
                (
                    self.cover_edge_corner(side=True, column=5, row=4, left=False, top=False, offset_along_edge=-2, top_shell=top_shell),
                    self.finger_layout.web_corner(column=5, row=4, left=False, top=False, **web_corner_kwargs),
                ),
                (
                    self.cover_edge_corner(side=True, column=5, row=4, left=False, top=True, top_shell=top_shell),
                    self.finger_layout.web_corner(column=5, row=4, left=False, top=True, **web_corner_kwargs),
                ),
                (
                    self.cover_edge_corner(side=True, column=5, row=3, left=False, top=False, top_shell=top_shell),
                    self.finger_layout.web_corner(column=5, row=3, left=False, top=False, **web_corner_kwargs),
                ),
                (
                    self.cover_edge_corner(side=True, column=5, row=3, left=False, top=True, top_shell=top_shell),
                    self.finger_layout.web_corner(column=5, row=3, left=False, top=True, **web_corner_kwargs),
                ),
                (
                    self.cover_edge_corner(side=True, column=5, row=2, left=False, top=False, top_shell=top_shell),
                    self.finger_layout.web_corner(column=5, row=2, left=False, top=False, **web_corner_kwargs),
                ),
                (
                    self.cover_edge_corner(side=True, column=5, row=2, left=False, top=True, top_shell=top_shell),
                    self.finger_layout.web_corner(column=5, row=2, left=False, top=True, **web_corner_kwargs),
                ),
                (
                    self.cover_edge_corner(side=True, column=5, row=1, left=False, top=False, top_shell=top_shell),
                    self.finger_layout.web_corner(column=5, row=1, left=False, top=False, **web_corner_kwargs),
                ),
                (
                    self.cover_edge_corner(side=True, column=5, row=1, left=False, top=True, top_shell=top_shell),
                    self.finger_layout.web_corner(column=5, row=1, left=False, top=True, **web_corner_kwargs),
                ),
                (
                    self.cover_edge_corner(side=True, column=5, row=0, left=False, top=False, top_shell=top_shell),
                    self.finger_layout.web_corner(column=5, row=0, left=False, top=False, **web_corner_kwargs),
                ),
                (
                    self.cover_edge_corner(side=True, column=5, row=0, left=False, top=True, top_shell=top_shell, offset_along_edge=2),
                    self.finger_layout.web_corner(column=5, row=0, left=False, top=True, **web_corner_kwargs),
                ),
                (
                    self.cover_edge_corner(side=False, column=5, row=0, left=False, top=True, top_shell=top_shell, offset_along_edge=-2),
                    self.finger_layout.web_corner(column=5, row=0, left=False, top=True, **web_corner_kwargs),
                ),
                (
                    self.cover_edge_corner(side=False, column=5, row=0, left=True, top=True, top_shell=top_shell),
                    self.finger_layout.web_corner(column=5, row=0, left=True, top=True, **web_corner_kwargs),
                ),
                (
                    self.cover_edge_corner(side=False, column=4, row=0, left=False, top=True, top_shell=top_shell),
                    self.finger_layout.web_corner(column=4, row=0, left=False, top=True, **web_corner_kwargs),
                ),
                (
                    self.cover_edge_corner(side=False, column=4, row=0, left=True, top=True, top_shell=top_shell, offset_along_edge=-0.3),
                    self.finger_layout.web_corner(column=4, row=0, left=True, top=True, **web_corner_kwargs),
                ),
            ),
            (
                (
                    self.cover_edge_corner(side=False, column=0, row=0, left=False, top=True, top_shell=top_shell, offset_along_edge=0 if top_shell else 2),
                    self.finger_layout.web_corner(column=0, row=0, left=False, top=True, **web_corner_kwargs),
                ),
                (
                    self.cover_edge_corner(side=False, column=0, row=0, left=True, top=True, top_shell=top_shell, offset_along_edge=3 if top_shell else 0),
                    self.finger_layout.web_corner(column=0, row=0, left=True, top=True, **web_corner_kwargs),
                ),
            ),
        )

    def finger_cover_edge(self, top_shell):
        """Create the edge pieces of the top shell or bottom cover.

        :param top_shell: whether this is for the top shell (True) or for the bottom cover (False)
        :type top_shell: bool
        """
        edge_groups = self.generate_cover_edge_corners(top_shell=top_shell)

        return (
            union()(
                *chain(
                    *(
                        (hull()(*edge1, *edge2) for (edge1, edge2) in pairwise(edges))
                        for edges in edge_groups
                    )
                )
            )
            + self.place_cover_magnets(self.cover_magnet_mount(top_shell=top_shell))
        )

    def finger_bottom_cover(self):
        """Generate the bottom cover.
        """
        return (
            self.finger_layout.place_all(self.switch_bottom_cover)
            + self.finger_layout.web_all(
                z_offset=-self.bottom_cover_offset - self.bottom_cover_thickness,
                thickness=self.bottom_cover_thickness
            )
            + hull()(
                self.transform_connector_mount(
                    cylinder_outer(self.connector_mount.outerRadius(), 10 + self.bottom_cover_thickness, center=True)
                    .down((10 + self.bottom_cover_thickness) / 2 + 0.3)
                )
                - self.finger_layout.key_place(
                    0, 0,
                    cube(
                        30,
                        30,
                        20,
                        center=True
                    ).up(10 - self.bottom_cover_offset)
                ),
                self.finger_layout.web_corner(
                    column=1, row=0, left=True, top=True,
                    z_offset=-self.bottom_cover_offset - self.bottom_cover_thickness,
                    thickness=self.bottom_cover_thickness
                ),
                self.finger_layout.web_corner(
                    column=1, row=0, left=True, top=False,
                    z_offset=-self.bottom_cover_offset - self.bottom_cover_thickness,
                    thickness=self.bottom_cover_thickness
                ),
            )
            + self.finger_cover_edge(top_shell=False)
            - self.place_cover_magnets(self.cover_magnet_hole(top_shell=False))
            - hull()(
                self.transform_connector_mount(
                    cylinder_outer(self.connector_mount.outerRadius() - self.connector_mount.outerFrameWidth, 20, center=True)
                ),
                self.finger_layout.web_corner(
                    column=1, row=0, left=True, top=True,
                    z_offset=-self.bottom_cover_offset,
                    thickness=self.bottom_cover_thickness
                ),
                self.finger_layout.web_corner(
                    column=1, row=0, left=True, top=False,
                    z_offset=-self.bottom_cover_offset,
                    thickness=self.bottom_cover_thickness
                ),
            )
        )

    def finger_bottom_cover_feet(self):
        """Generate feet to union with the bottom cover.
        """
        bottom_cover_attachment_spot = cube(
            self.finger_layout.keyswitch_width + self.wall_thickness * 2,
            self.finger_layout.keyswitch_length + self.wall_thickness * 2,
            0.1,
            center=True
        ).up(
            plate_thickness - self.thumb_layout.web_thickness / 2 - self.bottom_cover_offset - self.bottom_cover_thickness / 2
        )

        return (
            hull()(
                self.finger_layout.key_place(0, 1, bottom_cover_attachment_spot),
                cube(10, 10, 0.1, center=True).translate((-60, 45, 0.05)),
            )
            + hull()(
                self.finger_layout.key_place(0, 3, bottom_cover_attachment_spot),
                cube(10, 10, 0.1, center=True).translate((-60, -45, 0.05)),
            )
            + hull()(
                self.finger_layout.key_place(5, 0, bottom_cover_attachment_spot),
                cube(10, 10, 0.1, center=True).translate((70, 45, 0.05)),
            )
            + hull()(
                self.finger_layout.key_place(5, 4, bottom_cover_attachment_spot),
                cube(10, 10, 0.1, center=True).translate((70, -65, 0.05)),
            )
        )

    def thumb_part(self):
        shape = (
            self.thumb_layout.place_all(self.switch_socket)
            + self.thumb_layout.web_all()

            + (
                (
                    self.transform_thumb_nut1(self.tenting_nut)
                    + hull()(
                        self.transform_thumb_nut1(
                            cube((10, 0.1, 10), center=True)
                            .translate((0, 5, 0))
                        ),
                        self.thumb_layout.web_corner(0, 1, left=True, top=False),
                        self.thumb_layout.web_corner(0, 1, left=True, top=True),
                    )
                    + hull()(
                        self.transform_thumb_nut1(
                            cube((0.1, 10, 10), center=True)
                            .translate((5, 0, 0))
                        ),
                        self.thumb_layout.web_corner(0, 1, left=False, top=False),
                        self.thumb_layout.web_corner(0, 1, left=True, top=False),
                    )

                    # + self.transform_thumb_nut2(self.tenting_nut)
                    # + hull()(
                    #     self.transform_thumb_nut2(
                    #         cube((10, 0.1, 10), center=True)
                    #         .translate((0, -5, 0))
                    #     ),
                    #     self.thumb_layout.web_corner(0, -1/2, left=True, top=True, row_span=2),
                    #     self.thumb_layout.web_corner(0, -1/2, left=False, top=True, row_span=2),
                    # )
                ) if self.bottom_thumb_nuts else nothing
            )
        )

        if self.use_color:
            return shape.color((0.1, 0.1, 0.1))

        return shape

    def connector(self):
        return (
            self.transform_finger_nut3(
                self.tenting_nut_unthreaded.down(10)
            )
            + self.transform_thumb_nut3(
                self.tenting_nut_unthreaded.down(10)
            )
            + hull()(
                self.transform_finger_nut3(
                    cube((10, 0.1, 10), center=True)
                    .translate((0, -5, -10))
                ),
                self.transform_thumb_nut3(
                    cube((10, 0.1, 10), center=True)
                    .translate((0, 5, -10))
                ),
            )
        )

    def single_piece(self):
        return (
            self.finger_part()
            + hull()(
                self.finger_layout.web_corner(0, 2, left=True, top=False),
                self.finger_layout.web_corner(0, 3, left=True, top=True),
                self.thumb_layout.web_corner(2, -1, left=True, top=True),
                self.thumb_layout.web_corner(2, -1, left=True, top=False),
                self.thumb_layout.web_corner(1, -1, left=False, top=False),
                self.thumb_layout.web_corner(1, -1, left=False, top=True),
            )
            + hull()(
                self.finger_layout.web_corner(0, 3, left=True, top=True),
                self.finger_layout.key_place(
                    column=0,
                    row=3,
                    shape=cube(
                        (self.finger_layout.web_post_size, self.finger_layout.web_post_size, self.finger_layout.web_thickness),
                        center=True
                    ).translate((
                        -(
                            (self.finger_layout.keyswitch_width - self.finger_layout.web_post_size) / 2
                            + self.finger_layout.wall_thickness
                        ),
                        0,
                        plate_thickness - (self.finger_layout.web_thickness / 2)
                    ))
                ),
                self.thumb_layout.web_corner(2, 0, left=True, top=True),
                self.thumb_layout.web_corner(2, -1, left=True, top=False),
                self.thumb_layout.web_corner(1, -1, left=False, top=False),
                self.thumb_layout.web_corner(1, 0, left=False, top=True),
            )
            + hull()(
                self.finger_layout.web_corner(0, 2, left=True, top=False),
                self.cover_edge_corner(side=True, column=0, row=2, left=True, top=True, top_shell=True, outer=True),
                self.thumb_layout.web_corner(2, -1, left=True, top=True),
                self.thumb_layout.web_corner(1, -1, left=False, top=True),
            )
            + self.thumb_part()
            - self.place_cover_magnets(self.cover_magnet_hole(top_shell=False))
        )


if __name__ == "__main__":
    def tagged_switch_plate(column, row):
        return (
            mx_plate_with_board_mount()
            + text(f'{column},{row}', size=keyswitch_length / 3, halign='center', valign='center')
        )

    assembly = KeyboardAssembly(
        columns=6,
        rows=5,
        use_1_5u_keys=False,
        use_color=False,

        # The default socket shape has a backplate supporting an MX hotswap socket, 5-pin switches, and a 2-pin or
        # 4-pin LED.

        # To remove backplates from keyswitch sockets:
        #socket_shape=lambda column, row: mx_plate(),

        # To use a single-key PCB:
        socket_shape=lambda column, row: mx_plate_with_board_mount(),
        #socket_shape=tagged_switch_plate,
        wall_thickness=2.625,  # The wall_thickness of the board mount socket (2.625)
    )
    lcdMount = LCDMount()

    pcb_board = single_key_board()

    def switch_cap(column, row):
        shape = sa_cap(1)
        if isinstance(row, float) and not row.is_integer():
            shape = sa_cap(2)
        elif isinstance(column, float) and not column.is_integer():
            shape = sa_cap(2).rotate((0, 0, 90))
        return shape

    right_finger_part = assembly.finger_part()
    right_finger_bottom_cover = assembly.finger_bottom_cover()
    right_finger_bottom_cover_with_feet = (
        right_finger_bottom_cover
        + assembly.finger_bottom_cover_feet()
    )
    right_thumb_part = assembly.thumb_part()
    right_connector = assembly.connector()
    right_keycaps = (
        assembly.finger_layout.place_all(switch_cap)
        + assembly.thumb_layout.place_all(switch_cap)
    )
    right_pcbs = (
        assembly.finger_layout.place_all(pcb_board)
        + assembly.thumb_layout.place_all(pcb_board)
    )
    right_single_piece = assembly.single_piece()

    # TODO: We probably shouldn't need to explicitly call .mirror((1, 0, 0)) here...
    # Maybe wrap the assembly methods to automatically do this?
    assembly.left_side = True
    left_finger_part = assembly.finger_part().mirror((1, 0, 0))
    left_finger_bottom_cover = assembly.finger_bottom_cover().mirror((1, 0, 0))
    left_finger_bottom_cover_with_feet = (
        left_finger_bottom_cover
        + assembly.finger_bottom_cover_feet().mirror((1, 0, 0))
    )
    left_thumb_part = assembly.thumb_part().mirror((1, 0, 0))
    left_connector = assembly.connector().mirror((1, 0, 0))
    left_keycaps = (
        assembly.finger_layout.place_all(switch_cap)
        + assembly.thumb_layout.place_all(switch_cap)
    ).mirror((1, 0, 0))
    left_pcbs = (
        assembly.finger_layout.place_all(pcb_board)
        + assembly.thumb_layout.place_all(pcb_board)
    ).mirror((1, 0, 0))
    left_single_piece = assembly.single_piece().mirror((1, 0, 0))

    assembled_lcd_mount = (
        lcdMount.frame()
        + lcdMount.mount(
            assembly.transform_finger_nut3(
                cube((10, 0.1, 9), center=True)
                .translate((0, 5, -10))
            )
            .mirror((1, 0, 0))
            .translate((-100, 0, 0))
        )
        + assembly.transform_finger_nut3(
            assembly.tenting_nut_unthreaded.down(10)
        )
        .mirror((1, 0, 0))
        .translate((-100, 0, 0))
    )

    right_finger_filepath = "/home/whitelynx/Development/Personal/dactyl-lynx-keyboard/things/dactyl-lynx-6x5-right-finger.scad"
    print(f"Writing right finger output to {right_finger_filepath} . . .")
    right_finger_part.save_as_scad(right_finger_filepath)

    right_thumb_filepath = "/home/whitelynx/Development/Personal/dactyl-lynx-keyboard/things/dactyl-lynx-6x5-right-thumb.scad"
    print(f"Writing right thumb output to {right_thumb_filepath} . . .")
    right_thumb_part.save_as_scad(right_thumb_filepath)

    right_connector_filepath = "/home/whitelynx/Development/Personal/dactyl-lynx-keyboard/things/dactyl-lynx-6x5-right-connector.scad"
    print(f"Writing right connector output to {right_connector_filepath} . . .")
    right_connector.save_as_scad(right_connector_filepath)

    right_single_piece_filepath = "/home/whitelynx/Development/Personal/dactyl-lynx-keyboard/things/dactyl-lynx-6x5-right-single-piece.scad"
    print(f"Writing right single_piece output to {right_single_piece_filepath} . . .")
    right_single_piece.save_as_scad(right_single_piece_filepath)

    right_finger_bottom_cover_filepath = "/home/whitelynx/Development/Personal/dactyl-lynx-keyboard/things/dactyl-lynx-6x5-right-finger-bottom-cover.scad"
    print(f"Writing right finger_bottom_cover output to {right_finger_bottom_cover_filepath} . . .")
    right_finger_bottom_cover.save_as_scad(right_finger_bottom_cover_filepath)

    right_finger_bottom_cover_with_feet_filepath = "/home/whitelynx/Development/Personal/dactyl-lynx-keyboard/things/dactyl-lynx-6x5-right-finger-bottom-cover-with-feet.scad"
    print(f"Writing right finger_bottom_cover_with_feet output to {right_finger_bottom_cover_with_feet_filepath} . . .")
    right_finger_bottom_cover_with_feet.save_as_scad(right_finger_bottom_cover_with_feet_filepath)

    left_finger_filepath = "/home/whitelynx/Development/Personal/dactyl-lynx-keyboard/things/dactyl-lynx-6x5-left-finger.scad"
    print(f"Writing left finger output to {left_finger_filepath} . . .")
    left_finger_part.save_as_scad(left_finger_filepath)

    left_thumb_filepath = "/home/whitelynx/Development/Personal/dactyl-lynx-keyboard/things/dactyl-lynx-6x5-left-thumb.scad"
    print(f"Writing left thumb output to {left_thumb_filepath} . . .")
    left_thumb_part.save_as_scad(left_thumb_filepath)

    left_connector_filepath = "/home/whitelynx/Development/Personal/dactyl-lynx-keyboard/things/dactyl-lynx-6x5-left-connector.scad"
    print(f"Writing left connector output to {left_connector_filepath} . . .")
    left_connector.save_as_scad(left_connector_filepath)

    left_single_piece_filepath = "/home/whitelynx/Development/Personal/dactyl-lynx-keyboard/things/dactyl-lynx-6x5-left-single-piece.scad"
    print(f"Writing left single_piece output to {left_single_piece_filepath} . . .")
    left_single_piece.save_as_scad(left_single_piece_filepath)

    left_finger_bottom_cover_filepath = "/home/whitelynx/Development/Personal/dactyl-lynx-keyboard/things/dactyl-lynx-6x5-left-finger-bottom-cover.scad"
    print(f"Writing left finger_bottom_cover output to {left_finger_bottom_cover_filepath} . . .")
    left_finger_bottom_cover.save_as_scad(left_finger_bottom_cover_filepath)

    left_finger_bottom_cover_with_feet_filepath = "/home/whitelynx/Development/Personal/dactyl-lynx-keyboard/things/dactyl-lynx-6x5-left-finger-bottom-cover-with-feet.scad"
    print(f"Writing left finger_bottom_cover_with_feet output to {left_finger_bottom_cover_with_feet_filepath} . . .")
    left_finger_bottom_cover_with_feet.save_as_scad(left_finger_bottom_cover_with_feet_filepath)

    lcd_mount_filepath = "/home/whitelynx/Development/Personal/dactyl-lynx-keyboard/things/dactyl-lynx-6x5-left-lcd-mount.scad"
    print(f"Writing LCD mount output to {lcd_mount_filepath} . . .")
    assembled_lcd_mount.save_as_scad(lcd_mount_filepath)

    combined_filepath = "/home/whitelynx/Development/Personal/dactyl-lynx-keyboard/things/dactyl-lynx-6x5.scad"
    print(f"Writing combined output to {combined_filepath} . . .")
    (
        (
            #right_finger_part.color((0.1, 0.1, 0.9))
            #+ right_thumb_part.color((0.1, 0.1, 0.1))
            #+ right_connector.color((0.4, 0.1, 0.1))
            right_single_piece.color((0.1, 0.1, 0.1))
            + assembly.transform_trackpoint_mount(assembly.trackpoint_mount.trackpoint_shape())
            + right_keycaps.color((1.0, 0.98, 0.95))
            + right_pcbs.color((0.02, 0.02, 0.02))
            + right_finger_bottom_cover_with_feet.color((0.12, 0.12, 0.12)).down(0.01)
        ).translate((100, 0, 0))
        + (
            #left_finger_part.color((0.1, 0.1, 0.9))
            #+ left_thumb_part.color((0.1, 0.1, 0.1))
            #+ left_connector.color((0.4, 0.1, 0.1))
            left_single_piece.color((0.1, 0.1, 0.1))
            + left_keycaps.color((1.0, 0.98, 0.95))
            + left_pcbs.color((0.02, 0.02, 0.02))
            + left_finger_bottom_cover_with_feet.color((0.12, 0.12, 0.12)).down(0.01)
        ).translate((-100, 0, 0))
        # + assembled_lcd_mount.color((0.1, 0.3, 0.1))
    ).save_as_scad(combined_filepath)

    import sys
    sys.exit(0)
#######

    parser = argparse.ArgumentParser(description="Process some integers.")
    parser.add_argument(
        "finger_columns",
        metavar="COLS",
        type=int,
        default=6,
        nargs="?",
        help="the number of columns in the finger well",
    )
    parser.add_argument(
        "finger_rows",
        metavar="ROWS",
        type=int,
        default=5,
        nargs="?",
        help="the number of rows in the finger well",
    )
    parser.add_argument(
        "--with-keycaps",
        action="store_true",
        default=False,
        dest="show_keycaps",
        help="render keycaps (default: don't render keycaps)",
    )
    parser.add_argument(
        "--without-keycaps",
        action="store_false",
        dest="show_keycaps",
        help="don't render keycaps",
    )
    parser.add_argument(
        "--with-sockets",
        action="store_true",
        default=True,
        dest="show_sockets",
        help="render keyswitch sockets",
    )
    parser.add_argument(
        "--without-sockets",
        action="store_false",
        dest="show_sockets",
        help="don't render keyswitch sockets (default: render sockets)",
    )
    parser.add_argument(
        "-o",
        "--output",
        metavar="FILE",
        type=str,
        default=None,
        help="the name of the file to write to",
    )

    args = parser.parse_args()

    def build_filepath():
        return join(
            dirname(dirname(dirname(abspath(__file__)))),
            "things",
            args.output
            or f"dactyl-lynx-{args.finger_columns}x{args.finger_rows}.scad",
        )

    filepath = build_filepath()

    print(f"Building board with {args.finger_columns}x{args.finger_rows} "
          "finger wells . . .")

    layout = Layout(
        finger_columns=args.finger_columns,
        finger_rows=args.finger_rows,
    )

    print(f"Writing output to {filepath} . . .")
    (
        (
            layout.finger_caps()
            + layout.thumb_caps()
            if args.show_keycaps else nothing
        )
        + (
            layout.finger_place_all(mx_plate_with_backplate())
            + layout.thumb_place_all(mx_plate_with_backplate())
            if args.show_sockets else nothing
        )
    ).save_as_scad(filepath)
