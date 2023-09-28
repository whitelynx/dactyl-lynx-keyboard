#!/usr/bin/env python3
import argparse
import math
import operator
from functools import reduce
from itertools import chain
from os.path import abspath, dirname, join

from solid2 import OpenSCADObject, cube, hull
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
        self.row_radius = (
            (
                ((mount_length + 0.5) / 2)
                / (math.sin(self.rad_per_row / 2))
            ) + self.cap_top_height)
        self.column_radius = (
            (
                ((mount_width + 2.0) / 2)
                / (math.sin(self.rad_per_col / 2))
            ) + self.cap_top_height)

        self.web_post_size = 0.1
        self.web_thickness = keyswitch_depth

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

    def key_place(self, column, row, shape):
        """Place a key (or other shape) in the layout.

        :param column: the column to place the key in
        :type column: number

        :param row: the row to place the key in
        :type row: number

        :param shape: the shape to place
        """
        row = self.row_adjust(row)
        row_angle = math.degrees(self.rad_per_row * (2 - row))

        row_placed_shape = shape \
            .translate((0, 0, -self.row_radius)) \
            .rotate(row_angle, (1, 0, 0)) \
            .translate((0, 0, self.row_radius))

        column = self.column_adjust(column)
        column_angle = math.degrees(self.rad_per_col * (2 - column))

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

    def web_corner(self, column, row, left, top):
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

        x_move_amount = (self.keyswitch_width - self.web_post_size) / 2 + 1.45
        y_move_amount = (self.keyswitch_length - self.web_post_size) / 2 + 1.45

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

    def placement_adjust(self, column, row, shape):
        """Adjust the position of the given key/location in the layout.

        :param column: the column to place the key in
        :type column: number

        :param row: the row to place the key in
        :type row: number

        :param shape: the shape to place
        """
        if column == 2:
            return shape.translate((0, 2.82, -3.0))
        elif column >= 4:
            return shape.translate((0, -5.8, 5.64))
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

    def generate_positions(self):
        """Generate the list of locations within the layout.
        """
        return (
            # (column, row)
            (0, -1/2),
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
            .rotate(math.degrees(math.pi * 9/32), (0, 0, 1)) \
            .rotate(math.degrees(math.pi / 12), (1, 1, 0)) \
            .rotate(math.degrees(math.pi / (-11/6)), (-1, 1, 0)) \
            .translate((-37, -42, 48))

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
            )
        )


if __name__ == "__main__":
    finger_layout = FingerWellLayout(columns=6, rows=5, use_1_5u_keys=False)
    thumb_layout = ThumbWellLayout()

    tenting_nut = (
        cube((10, 10, 10), center=True)
        - screws.screw_hole("M6x1", length=10.01, thread=True, bevel=True, blunt_start=True, _fn=32)
    )

    def transform_nut1(shape):
        return shape \
            .rotate(20, (1, 0, 0)) \
            .translate((64, 50, 35))

    def transform_nut2(shape):
        return shape \
            .rotate(-15, (1, 0, 0)) \
            .rotate(-5, (0, 1, 0)) \
            .translate((78, -49, 28))

    def transform_nut3(shape):
        return shape \
            .rotate(15, (0, 1, 0)) \
            .translate((-52, 0, 45))

    def transform_board(shape):
        return shape \
            .rotate(90, (0, 0, 1)) \
            .rotate(-65, (1, 0, 0)) \
            .rotate(24, (0, 1, 0)) \
            .translate((-34, 53, 52))

    finger_assembly = (
        finger_layout.place_all(mx_plate_with_backplate())
        + finger_layout.web_all()

        + transform_nut1(tenting_nut)
        + hull()(
            transform_nut1(
                cube((10, 0.1, 10), center=True)
                .translate((0, -5, 0))
            ),
            finger_layout.web_corner(5, 0, left=True, top=True),
            finger_layout.web_corner(5, 0, left=False, top=True),
        )
        + hull()(
            transform_nut1(
                cube((0.1, 10, 10), center=True)
                .translate((-5, 0, 0))
            ),
            finger_layout.web_corner(5, 0, left=True, top=True),
            finger_layout.web_corner(4, 0, left=False, top=True),
        )

        + transform_nut2(tenting_nut)
        + hull()(
            transform_nut2(
                cube((0.1, 10, 10), center=True)
                .translate((-5, 0, 0))
            ),
            finger_layout.web_corner(5, 4, left=False, top=True),
            finger_layout.web_corner(5, 4, left=False, top=False),
        )
        + hull()(
            transform_nut2(
                cube((10, 0.1, 10), center=True)
                .translate((0, 5, 0))
            ),
            finger_layout.web_corner(5, 3, left=False, top=False),
            finger_layout.web_corner(5, 4, left=False, top=True),
        )

        + transform_nut3(tenting_nut)
        + hull()(
            transform_nut3(
                cube((10, 0.1, 10), center=True)
                .translate((0, 5, 0))
            ),
            finger_layout.web_corner(0, 1, left=True, top=False),
            finger_layout.web_corner(0, 2, left=True, top=True),
        )
        + hull()(
            transform_nut3(
                cube((0.1, 10, 10), center=True)
                .translate((5, 0, 0))
            ),
            finger_layout.web_corner(0, 2, left=True, top=True),
            finger_layout.web_corner(0, 2, left=True, top=False),
        )
        + hull()(
            transform_nut3(
                cube((10, 0.1, 10), center=True)
                .translate((0, -5, 0))
            ),
            finger_layout.web_corner(0, 2, left=True, top=False),
            finger_layout.web_corner(0, 3, left=True, top=True),
        )

        + transform_board(stm32_blackpill.render(distance_from_surface=8))
        + hull()(
            transform_board(
                cube((60, 120, 8), center=True)
                & stm32_blackpill.back_mounting_posts(distance_from_surface=8)
            ),
            finger_layout.web_corner(3, 0, left=True, top=True),
            finger_layout.web_corner(3, 0, left=False, top=True),
            finger_layout.web_corner(2, 0, left=False, top=True),
        )
        + hull()(
            transform_board(
                cube((60, 120, 6), center=True)
                & stm32_blackpill.front_mounting_posts(distance_from_surface=8)
            ),
            finger_layout.web_corner(0, 0, left=True, top=True),
            finger_layout.web_corner(0, 0, left=False, top=True),
        )
    )

    thumb_assembly = (
        thumb_layout.place_all(mx_plate_with_backplate())
        + thumb_layout.web_all()
    )

    finger_filepath = "/home/whitelynx/Development/Personal/dactyl-lynx-keyboard/things/dactyl-lynx-6x5-finger.scad"
    print(f"Writing finger output to {finger_filepath} . . .")
    finger_assembly.save_as_scad(finger_filepath)

    thumb_filepath = "/home/whitelynx/Development/Personal/dactyl-lynx-keyboard/things/dactyl-lynx-6x5-thumb.scad"
    print(f"Writing thumb output to {thumb_filepath} . . .")
    thumb_assembly.save_as_scad(thumb_filepath)

    combined_filepath = "/home/whitelynx/Development/Personal/dactyl-lynx-keyboard/things/dactyl-lynx-6x5.scad"
    print(f"Writing combined output to {combined_filepath} . . .")
    (
        finger_assembly
        + thumb_assembly
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
