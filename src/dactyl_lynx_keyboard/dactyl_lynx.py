#!/usr/bin/env python3
import argparse
import math
import operator
from functools import reduce
from itertools import chain
from os.path import abspath, dirname, join

from solid2 import cube, hull
from solid2.core.object_base import OpenSCADObject
from solid2.extensions.bosl2 import screws

from spkb.switch_plate import (
    mount_width,
    mount_length,
    keyswitch_length,
    keyswitch_width,
    keyswitch_depth,
    plate_thickness,
    mx_plate,
    mx_plate_with_backplate,
)
from spkb.board_mount import stm32_blackpill
from spkb.keycaps import sa_double_length, sa_cap
from spkb.utils import nothing


class Layout:
    def __init__(self, columns=6, rows=5):
        """Create a layout manager.

        :param columns: the number of columns in the layout
        :type columns: int

        :param rows: the number of rows in the layout
        :type rows: int
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

    def web_corner(self, column, row, left, top, column_span=1, row_span=1):
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
        post = cube((self.web_post_size, self.web_post_size, self.web_thickness), center=True) \
            .translate((0, 0, plate_thickness - (self.web_thickness / 2)))

        x_move_amount = (self.keyswitch_width + ((column_span - 1) * 24) - self.web_post_size) / 2 + 1.45
        y_move_amount = (self.keyswitch_length + ((row_span - 1) * 24) - self.web_post_size) / 2 + 1.45

        return self.key_place(
            column,
            row,
            post.translate((
                -x_move_amount if left else x_move_amount,
                y_move_amount if top else -y_move_amount,
                0
            ))
        )

    def web_left_of(self, column, row):
        """Return the "web" between the key at the given row/column and the neighboring one in the
        column to the left.

        :param column: the column of the key to create the web at
        :type column: number
        :param row: the row of the key to create the web at
        :type row: number

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
            self.web_corner(column, row, left=True, top=True),
            self.web_corner(column, row, left=True, top=False),
            self.web_corner(column - 1, row, left=False, top=False),
            self.web_corner(column - 1, row, left=False, top=True),
        )

    def web_above(self, column, row):
        """Return the "web" between the key at the given row/column and the neighboring one in the
        row above.

        :param column: the column of the key to create the web at
        :type column: number
        :param row: the row of the key to create the web at
        :type row: number

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
            self.web_corner(column, row, left=True, top=True),
            self.web_corner(column, row, left=False, top=True),
            self.web_corner(column, row - 1, left=False, top=False),
            self.web_corner(column, row - 1, left=True, top=False),
        )

    def web_top_left_of(self, column, row):
        """Return the "web" between the key at the given row/column and the neighboring ones in the
        column to the left and/or the row above.

        :param column: the column of the key to create the web at
        :type column: number
        :param row: the row of the key to create the web at
        :type row: number

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
            self.web_corner(column, row, left=True, top=True),
            self.web_corner(column - 1, row, left=False, top=True),
            self.web_corner(column - 1, row - 1, left=False, top=False),
            self.web_corner(column, row - 1, left=True, top=False),
        )

    def web_all(self):
        """Return the complete "web" between all key positions in this layout.thumb_place_all
        """
        return reduce(
            operator.add,
            chain(
                (
                    self.web_top_left_of(column, row)
                    for (column, row) in self.generate_positions()
                    if column > 0 and row > 0
                ),
                (
                    self.web_left_of(column, row)
                    for (column, row) in self.generate_positions()
                    if column > 0
                ),
                (
                    self.web_above(column, row)
                    for (column, row) in self.generate_positions()
                    if row > 0
                ),
            )
        )


class FingerWellLayout(Layout):
    def __init__(self, columns=6, rows=5, use_1_5u_keys=True):
        super(FingerWellLayout, self).__init__(columns=columns, rows=rows)

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
            .translate((0, 0, 22))

    def web_all(self):
        """Return the complete "web" between all key positions in this layout.
        """
        return reduce(
            operator.add,
            chain(
                (
                    self.web_top_left_of(column, row)
                    for (column, row) in self.generate_positions()
                    if column > 0 and row > 0 and (column != 1 or row != 4)
                ),
                (
                    self.web_left_of(column, row)
                    for (column, row) in self.generate_positions()
                    if column > 0 and (column != 1 or row != 4)
                ),
                (
                    self.web_above(column, row)
                    for (column, row) in self.generate_positions()
                    if row > 0
                ),
            )
        )


class ThumbWellLayout(Layout):
    def __init__(self, columns=3, rows=3):
        super(ThumbWellLayout, self).__init__(columns=columns, rows=rows)

        # Cupping amounts, in radians per row/column
        self.rad_per_row = math.pi / 12
        self.rad_per_col = math.pi / 8

        self.placement_transform = (-54, -72, 6)

    def generate_positions(self):
        """Generate the list of locations within the layout.
        """
        return (
            # (column, row)
            (0, -1/2), # 2u key
            (0, 1),
            (1, -1),
            (1, 0),
            (1, 1),
            (2, -1),
            (2, 0),
            (2, 1),
        )

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
            .rotate(10, (1, 1, 1)) \
            .translate(self.placement_transform)

    def web_all(self):
        """Return the complete "web" between all key positions in this layout.
        """
        return reduce(
            operator.add,
            chain(
                (
                    self.web_top_left_of(column, row)
                    for (column, row) in self.generate_positions()
                    if column > 0 and row > -1 and (column, row) not in (
                        (1, 1),
                        (1, 0),
                    )
                ),
                (
                    self.web_left_of(column, row)
                    for (column, row) in self.generate_positions()
                    if column > 0 and (column, row) not in (
                        (1, 0),
                        (1, -1),
                    )
                ),
                (
                    self.web_above(column, row)
                    for (column, row) in self.generate_positions()
                    if row > -1 and (column, row) not in (
                        (0, 1),
                        (0, -1/2),
                    )
                ),
                [
                    hull()(
                        self.web_corner(0, -1/2, left=False, top=False, row_span=2),
                        self.web_corner(0, 1, left=False, top=True),
                        self.web_corner(1, 1, left=True, top=True),
                        self.web_corner(1, 0, left=True, top=False),
                    ),
                    hull()(
                        self.web_corner(0, -1/2, left=True, top=False, row_span=2),
                        self.web_corner(0, -1/2, left=False, top=False, row_span=2),
                        self.web_corner(0, 1, left=False, top=True),
                        self.web_corner(0, 1, left=True, top=True),
                    ),
                    hull()(
                        self.web_corner(0, -1/2, left=False, top=True, row_span=2),
                        self.web_corner(1, -1, left=True, top=True),
                        self.web_corner(1, -1, left=True, top=False),
                    ),
                    hull()(
                        self.web_corner(0, -1/2, left=False, top=False, row_span=2),
                        self.web_corner(0, -1/2, left=False, top=True, row_span=2),
                        self.web_corner(1, -1, left=True, top=False),
                        self.web_corner(1, 0, left=True, top=True),
                    ),
                    hull()(
                        self.web_corner(0, -1/2, left=False, top=False, row_span=2),
                        self.web_corner(1, 0, left=True, top=False),
                        self.web_corner(1, 0, left=True, top=True),
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
            .translate((-36, 38, 50))
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


class KeyboardAssembly:
    def __init__(self, columns=6, rows=5, use_1_5u_keys=False, use_color=False):
        self.use_color = use_color

        self.finger_layout = FingerWellLayout(columns=columns, rows=rows, use_1_5u_keys=use_1_5u_keys)
        self.thumb_layout = ThumbWellLayout()

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

        self.bottom_thumb_nuts = True

    def transform_finger_nut1(self, shape):
        return shape \
            .rotate(20, (1, 0, 0)) \
            .translate((64, 50, 35))

    def transform_finger_nut2(self, shape):
        return shape \
            .rotate(-15, (1, 0, 0)) \
            .rotate(-5, (0, 1, 0)) \
            .translate((78, -49, 28))

    def transform_finger_nut3(self, shape):
        return shape \
            .rotate(15, (0, 1, 0)) \
            .translate((-52, 0, 45))

    def transform_board(self, shape):
        return shape \
            .rotate(90, (0, 0, 1)) \
            .rotate(-120, (1, 0, 0)) \
            .rotate(19, (0, 1, 0)) \
            .translate((-34, 59, 55))

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
            .rotate(-20, (1, 0, 0)) \
            .rotate(-20, (0, 0, 1)) \
            .rotate(-18, (0, 1, 0)) \
            .translate((-3, 57, 32)) \
            .rotate(10, (1, 1, 1)) \
            .translate(self.thumb_layout.placement_transform)

    def switch_socket(self, column, row):
        shape = mx_plate_with_backplate()
        if isinstance(row, float) and not row.is_integer():
            plate_height = (sa_double_length - mount_length + 3.2) / 2
            # TODO: Subtract stabilizer mount holes; see dactyl.clj line 348
            stabilizer_mount = cube(
                mount_width,
                plate_height,
                self.thumb_layout.web_thickness,
                center=True
            ).translate(
                0,
                (plate_height + mount_length) / 2,
                plate_thickness - self.thumb_layout.web_thickness / 2
            )
            shape = (
                shape
                + stabilizer_mount
                + stabilizer_mount.mirror(0, 1, 0)
            )
        elif isinstance(column, float) and not column.is_integer():
            plate_width = (sa_double_length - mount_width + 3.2) / 2
            # TODO: Subtract stabilizer mount holes; see dactyl.clj line 348
            stabilizer_mount = cube(
                plate_width,
                mount_length,
                self.thumb_layout.web_thickness,
                center=True
            ).translate(
                (plate_width + mount_width) / 2,
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

    def finger_part(self):
        shape = (
            self.finger_layout.place_all(self.switch_socket)
            + self.finger_layout.web_all()

            + self.transform_finger_nut1(self.tenting_nut)
            + hull()(
                self.transform_finger_nut1(
                    cube((10, 0.1, 10), center=True)
                    .translate((0, -5, 0))
                ),
                self.finger_layout.web_corner(5, 0, left=True, top=True),
                self.finger_layout.web_corner(5, 0, left=False, top=True),
            )
            + hull()(
                self.transform_finger_nut1(
                    cube((0.1, 10, 10), center=True)
                    .translate((-5, 0, 0))
                ),
                self.finger_layout.web_corner(5, 0, left=True, top=True),
                self.finger_layout.web_corner(4, 0, left=False, top=True),
            )

            + self.transform_finger_nut2(self.tenting_nut)
            + hull()(
                self.transform_finger_nut2(
                    cube((0.1, 10, 10), center=True)
                    .translate((-5, 0, 0))
                ),
                self.finger_layout.web_corner(5, 4, left=False, top=True),
                self.finger_layout.web_corner(5, 4, left=False, top=False),
            )
            + hull()(
                self.transform_finger_nut2(
                    cube((10, 0.1, 10), center=True)
                    .translate((0, 5, 0))
                ),
                self.finger_layout.web_corner(5, 3, left=False, top=False),
                self.finger_layout.web_corner(5, 4, left=False, top=True),
            )

            + self.transform_finger_nut3(self.tenting_nut)
            + hull()(
                self.transform_finger_nut3(
                    cube((10, 0.1, 10), center=True)
                    .translate((0, 5, 0))
                ),
                self.finger_layout.web_corner(0, 1, left=True, top=False),
                self.finger_layout.web_corner(0, 2, left=True, top=True),
            )
            + hull()(
                self.transform_finger_nut3(
                    cube((0.1, 10, 10), center=True)
                    .translate((5, 0, 0))
                ),
                self.finger_layout.web_corner(0, 2, left=True, top=True),
                self.finger_layout.web_corner(0, 2, left=True, top=False),
            )
            + hull()(
                self.transform_finger_nut3(
                    cube((10, 0.1, 10), center=True)
                    .translate((0, -5, 0))
                ),
                self.finger_layout.web_corner(0, 2, left=True, top=False),
                self.finger_layout.web_corner(0, 3, left=True, top=True),
            )

            + self.transform_board(stm32_blackpill.render(distance_from_surface=8))
            + hull()(
                self.transform_board(
                    cube((60, 120, 8), center=True)
                    & stm32_blackpill.back_mounting_posts(distance_from_surface=8)
                ),
                self.finger_layout.web_corner(3, 0, left=True, top=True),
                self.finger_layout.web_corner(3, 0, left=False, top=True),
                self.finger_layout.web_corner(2, 0, left=False, top=True),
            )
            + hull()(
                self.transform_board(
                    cube((60, 120, 6), center=True)
                    & stm32_blackpill.front_mounting_posts(distance_from_surface=8)
                ),
                self.finger_layout.web_corner(0, 0, left=True, top=True),
                self.finger_layout.web_corner(0, 0, left=False, top=True),
            )
        )

        if self.use_color:
            return shape.color((0.1, 0.1, 0.1))

        return shape

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

            + self.transform_thumb_nut3(self.tenting_nut)
            + hull()(
                self.transform_thumb_nut3(
                    cube((10, 0.1, 8), center=True)
                    .translate((0, -5, 0))
                ),
                self.thumb_layout.web_corner(2, -1, left=True, top=True),
                self.thumb_layout.web_corner(2, -1, left=True, top=False),
                self.thumb_layout.web_corner(1, -1, left=False, top=False),
                self.thumb_layout.web_corner(1, -1, left=False, top=True),
            )
            + hull()(
                self.transform_thumb_nut3(
                    cube((0.1, 10, 8), center=True)
                    .translate((5, 0, 0))
                ),
                self.thumb_layout.web_corner(2, 0, left=True, top=True),
                self.thumb_layout.web_corner(2, -1, left=True, top=False),
                self.thumb_layout.web_corner(1, -1, left=False, top=False),
                self.thumb_layout.web_corner(1, 0, left=False, top=True),
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


if __name__ == "__main__":
    #assembly = KeyboardAssembly(columns=6, rows=5, use_1_5u_keys=False, use_color=True)
    assembly = KeyboardAssembly(columns=6, rows=5, use_1_5u_keys=False, use_color=False)
    lcdMount = LCDMount()

    def switch_cap(column, row):
        shape = sa_cap(1)
        if isinstance(row, float) and not row.is_integer():
            shape = sa_cap(2)
        elif isinstance(column, float) and not column.is_integer():
            shape = sa_cap(2).rotate((0, 0, 90))
        return shape

    right_finger_part = assembly.finger_part()
    right_thumb_part = assembly.thumb_part()
    right_connector = assembly.connector()
    right_keycaps = (
        assembly.finger_layout.place_all(switch_cap)
        + assembly.thumb_layout.place_all(switch_cap)
    )

    assembly.left_side = True
    left_finger_part = assembly.finger_part().mirror((1, 0, 0))
    left_thumb_part = assembly.thumb_part().mirror((1, 0, 0))
    left_connector = assembly.connector().mirror((1, 0, 0))
    left_keycaps = (
        assembly.finger_layout.place_all(switch_cap)
        + assembly.thumb_layout.place_all(switch_cap)
    ).mirror((1, 0, 0))

    assembled_lcd_mount = (
        lcdMount.frame()
        + lcdMount.mount(
            assembly.transform_finger_nut3(
                cube((10, 0.1, 9), center=True)
                .translate((0, 5, -20))
            )
            .mirror((1, 0, 0))
            .translate((-100, 0, 0))
        )
        + assembly.transform_finger_nut3(
            assembly.tenting_nut_unthreaded.down(20)
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

    left_finger_filepath = "/home/whitelynx/Development/Personal/dactyl-lynx-keyboard/things/dactyl-lynx-6x5-left-finger.scad"
    print(f"Writing left finger output to {left_finger_filepath} . . .")
    left_finger_part.save_as_scad(left_finger_filepath)

    left_thumb_filepath = "/home/whitelynx/Development/Personal/dactyl-lynx-keyboard/things/dactyl-lynx-6x5-left-thumb.scad"
    print(f"Writing left thumb output to {left_thumb_filepath} . . .")
    left_thumb_part.save_as_scad(left_thumb_filepath)

    left_connector_filepath = "/home/whitelynx/Development/Personal/dactyl-lynx-keyboard/things/dactyl-lynx-6x5-left-connector.scad"
    print(f"Writing left connector output to {left_connector_filepath} . . .")
    left_connector.save_as_scad(left_connector_filepath)

    lcd_mount_filepath = "/home/whitelynx/Development/Personal/dactyl-lynx-keyboard/things/dactyl-lynx-6x5-left-lcd-mount.scad"
    print(f"Writing LCD mount output to {lcd_mount_filepath} . . .")
    assembled_lcd_mount.save_as_scad(lcd_mount_filepath)

    combined_filepath = "/home/whitelynx/Development/Personal/dactyl-lynx-keyboard/things/dactyl-lynx-6x5.scad"
    print(f"Writing combined output to {combined_filepath} . . .")
    (
        (
            right_finger_part.color((0.1, 0.1, 0.1))
            + right_thumb_part.color((0.1, 0.1, 0.1))
            + right_connector.color((0.4, 0.1, 0.1))
            + right_keycaps.color((1.0, 0.98, 0.95))
        ).translate((100, 0, 0))
        + (
            left_finger_part.color((0.1, 0.1, 0.1))
            + left_thumb_part.color((0.1, 0.1, 0.1))
            + left_connector.color((0.4, 0.1, 0.1))
            + left_keycaps.color((1.0, 0.98, 0.95))
        ).translate((-100, 0, 0))
        + assembled_lcd_mount.color((0.1, 0.3, 0.1))
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
