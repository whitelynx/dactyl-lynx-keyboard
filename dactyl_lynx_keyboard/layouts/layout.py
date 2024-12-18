"""Defines the base class for key layouts.
"""
import math
import operator
from collections.abc import Iterable, Sequence
from functools import reduce
from itertools import chain
from typing import Optional, Protocol, Tuple, Union

from solid2 import cube, hull
from solid2.core.object_base import OpenSCADObject

from spkb.keyswitch import Keyswitch, MX
from spkb.utils import nothing


class XYAdjustCallback(Protocol):
    """A callback for adjusting X and Y coordinates (usually either size or position adjustments)
    based on the column/row position.
    """
    def __call__(self, column: float, row: float) -> Tuple[float, float]:
        """Return a 2-tuple containing X and Y axis adjustments for the given column/row position.
        (usually either size or position adjustments)
        """
        return (0, 0)


class ShapeForLocationCallback(Protocol):
    """A callback for generating a shape to place at a given column/row position.
    """
    def __call__(self, column: float, row: float) -> OpenSCADObject:
        """Return a shape to place at the given column/row position.
        """
        return nothing


class Layout:
    """The base implementation of a layout manager.

    This can generate a grid of key positions.
    """
    def __init__(self, columns: int = 6, rows: int = 5, keyswitch: Keyswitch = MX()):
        """Create a layout manager.

        :param columns: the number of columns in the layout

        :param rows: the number of rows in the layout
        """

        self.rows = rows
        self.columns = columns

        self.sa_profile_key_height = 12.7
        """Approx. height from top of the plate to the top of the shortest
        keycap in an SA profile? Really not sure."""

        self.rad_per_row = math.pi / 12
        "Cupping amount, in radians per row"
        self.rad_per_col = math.pi / 36
        "Cupping amount, in radians per column"

        self.thumb_switch_clearance = 12
        """Clearance for the depth of the switch - only needed for the bottom
        right 2x key and the top right 1x key"""

        self.keyswitch = keyswitch

        self.cap_top_height = self.sa_profile_key_height

        self.web_post_size = 0.1
        self.web_thickness = keyswitch.keyswitch_depth

        #self.offset_per_row = self.keyswitch.plate_size().y + 0.5
        self.offset_per_row = 17.5
        #self.offset_per_col = self.keyswitch.plate_size().x + 2.0
        self.offset_per_col = 19

        self.positions_to_skip: Sequence[Tuple[float, float]] = ()
        "A sequence of positions in the layout to skip when generating positions."

    @property
    def row_radius(self) -> float:
        return (
            (self.offset_per_row / 2)
            / (math.sin(self.rad_per_row / 2))
        ) + self.cap_top_height

    @property
    def column_radius(self) -> float:
        return (
            (self.offset_per_col / 2)
            / (math.sin(self.rad_per_col / 2))
        ) + self.cap_top_height

    def generate_positions(self) -> Iterable[Tuple[float, float]]:
        """Generate the list of locations within the layout.

        Override this to change the list of locations, or set `positions_to_skip` to filter out certain positions.
        """
        return (
            (column, row)
            for row in range(self.rows)
            for column in range(self.columns)
            if (column, row) not in self.positions_to_skip
        )

    def column_adjust(self, column: float) -> float:
        """Override this method to adjust the effective column number of a given column.

        :param column: the column number to adjust
        """
        return column

    def row_adjust(self, row: float) -> float:
        """Override this method to adjust the effective row number of a given row.

        :param row: the row number to adjust
        """
        return row

    def placement_adjust(self, column: float, row: float, shape: OpenSCADObject) -> OpenSCADObject:
        """Override this method to adjust the position of the given key/location in the layout.

        :param column: the column to place the key in

        :param row: the row to place the key in

        :param shape: the shape to place
        """
        return shape

    def row_angle(self, row: float) -> float:
        """Calculate the X rotation angle for the given row.

        :param row: the row number to rotate for
        """
        return math.degrees(self.rad_per_row * -row)

    def column_angle(self, column: float) -> float:
        """Calculate the Y rotation angle for the given column.

        :param column: the row number to rotate for
        """
        return math.degrees(self.rad_per_col * -column)

    def key_place(self, column: float, row: float, shape: OpenSCADObject) -> OpenSCADObject:
        """Place a key (or other shape) in the layout.

        :param column: the column to place the key in

        :param row: the row to place the key in

        :param shape: the shape to place
        """
        row = self.row_adjust(row)
        row_angle = self.row_angle(row)

        row_placed_shape = shape \
            .down(self.row_radius) \
            .rotate(row_angle, (1, 0, 0)) \
            .up(self.row_radius)

        column = self.column_adjust(column)
        column_angle = self.column_angle(column)

        column_placed_shape = row_placed_shape \
            .down(self.column_radius) \
            .rotate(column_angle, (0, 1, 0)) \
            .up(self.column_radius) \

        return self.layout_place(
            self.placement_adjust(column, row, column_placed_shape)
        )

    def layout_place(self, shape: OpenSCADObject) -> OpenSCADObject:
        """Place the layout.

        Override to adjust the placement of the entire layout.

        :param shape: the shape to place
        """
        return shape

    def place_all(self, shape_or_callback: Union[OpenSCADObject, ShapeForLocationCallback]) -> OpenSCADObject:
        """Place the given shape (or the shape returned by the given callback) at every location
        in the layout.

        :param shape_or_callback: the shape to place, or a callback that returns the shape
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

    def web_corner(self, column: float, row: float, left: bool, top: bool, column_span: float = 1, row_span: float = 1, z_offset: float = 0, thickness: Optional[float] = None, size_adjust: Optional[XYAdjustCallback] = None, position_adjust: Optional[XYAdjustCallback] = None) -> OpenSCADObject:
        """Return a tiny block encompassing the given corner of the given key position, for
        building the "web" between the keys.

        :param column: the column of the key to create the corner block at
        :param row: the row of the key to create the corner block at
        :param left: whether to create the block on the left side (True) or the right side (False)
        :param top: whether to create the block on the top side (True) or the bottom side (False)
        :param column_span: the number of columns occupied by the key
        :param row_span: the number of rows occupied by the key
        :param z_offset: the offset in the Z direction of the corner block (before placing at the key position)
        :param thickness: the thickness of the web; if None, default to self.web_thickness
        :param size_adjust: a callback to adjust the size of the key at this column and row
        :param position_adjust: a callback to adjust the position of the key at this column and row

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
        ).down(thickness / 2)

        x_adjust = 0
        y_adjust = 0
        if size_adjust is not None:
            x_size_adjust, y_size_adjust = size_adjust(column, row)
            x_adjust += x_size_adjust / 2
            y_adjust += y_size_adjust / 2
        if position_adjust is not None:
            x_pos_adjust, y_pos_adjust = position_adjust(column, row)
            if left:
                x_adjust -= x_pos_adjust
            else:
                x_adjust += x_pos_adjust
            if top:
                y_adjust += y_pos_adjust
            else:
                y_adjust -= y_pos_adjust

        x_move_amount = (
            self.keyswitch.keyswitch_width + ((column_span - 1) * 24) - self.web_post_size
        ) / 2 + self.keyswitch.wall_thickness + x_adjust
        y_move_amount = (
            self.keyswitch.keyswitch_length + ((row_span - 1) * 24) - self.web_post_size
        ) / 2 + self.keyswitch.wall_thickness + y_adjust

        return self.key_place(
            column,
            row,
            post.translate((
                -x_move_amount if left else x_move_amount,
                y_move_amount if top else -y_move_amount,
                z_offset
            ))
        )

    def web_left_of(self, column: float, row: float, z_offset: float = 0, thickness: Optional[float] = None, size_adjust: Optional[XYAdjustCallback] = None, position_adjust: Optional[XYAdjustCallback] = None) -> OpenSCADObject:
        """Return the "web" between the key at the given row/column and the neighboring one in the
        column to the left.

        :param column: the column of the key to create the web at
        :param row: the row of the key to create the web at
        :param z_offset: the offset in the Z direction of the corner blocks (before placing at the key positions)
        :param thickness: the thickness of the web; if None, default to self.web_thickness
        :param size_adjust: a callback to adjust the size of the key at this column and row
        :param position_adjust: a callback to adjust the position of the key at this column and row

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
            self.web_corner(column, row, left=True, top=True,
                            z_offset=z_offset, thickness=thickness,
                            size_adjust=size_adjust, position_adjust=position_adjust),
            self.web_corner(column, row, left=True, top=False,
                            z_offset=z_offset, thickness=thickness,
                            size_adjust=size_adjust, position_adjust=position_adjust),
            self.web_corner(column - 1, row, left=False, top=False,
                            z_offset=z_offset, thickness=thickness,
                            size_adjust=size_adjust, position_adjust=position_adjust),
            self.web_corner(column - 1, row, left=False, top=True,
                            z_offset=z_offset, thickness=thickness,
                            size_adjust=size_adjust, position_adjust=position_adjust),
        )

    def web_above(self, column: float, row: float, z_offset: float = 0, thickness: Optional[float] = None, size_adjust: Optional[XYAdjustCallback] = None, position_adjust: Optional[XYAdjustCallback] = None) -> OpenSCADObject:
        """Return the "web" between the key at the given row/column and the neighboring one in the
        row above.

        :param column: the column of the key to create the web at
        :param row: the row of the key to create the web at
        :param z_offset: the offset in the Z direction of the corner blocks (before placing at the key positions)
        :param thickness: the thickness of the web; if None, default to self.web_thickness
        :param size_adjust: a callback to adjust the size of the key at this column and row
        :param position_adjust: a callback to adjust the position of the key at this column and row

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
            self.web_corner(column, row, left=True, top=True,
                            z_offset=z_offset, thickness=thickness,
                            size_adjust=size_adjust, position_adjust=position_adjust),
            self.web_corner(column, row, left=False, top=True,
                            z_offset=z_offset, thickness=thickness,
                            size_adjust=size_adjust, position_adjust=position_adjust),
            self.web_corner(column, row - 1, left=False, top=False,
                            z_offset=z_offset, thickness=thickness,
                            size_adjust=size_adjust, position_adjust=position_adjust),
            self.web_corner(column, row - 1, left=True, top=False,
                            z_offset=z_offset, thickness=thickness,
                            size_adjust=size_adjust, position_adjust=position_adjust),
        )

    def web_top_left_of(self, column: float, row: float, z_offset: float = 0, thickness: Optional[float] = None, size_adjust: Optional[XYAdjustCallback] = None, position_adjust: Optional[XYAdjustCallback] = None) -> OpenSCADObject:
        """Return the "web" between the key at the given row/column and the neighboring ones in the
        column to the left and/or the row above.

        :param column: the column of the key to create the web at
        :param row: the row of the key to create the web at
        :param z_offset: the offset in the Z direction of the corner blocks (before placing at the key positions)
        :param thickness: the thickness of the web; if None, default to self.web_thickness
        :param size_adjust: a callback to adjust the size of the key at this column and row
        :param position_adjust: a callback to adjust the position of the key at this column and row

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
            self.web_corner(column, row, left=True, top=True,
                            z_offset=z_offset, thickness=thickness,
                            size_adjust=size_adjust, position_adjust=position_adjust),
            self.web_corner(column - 1, row, left=False, top=True,
                            z_offset=z_offset, thickness=thickness,
                            size_adjust=size_adjust, position_adjust=position_adjust),
            self.web_corner(column - 1, row - 1, left=False, top=False,
                            z_offset=z_offset, thickness=thickness,
                            size_adjust=size_adjust, position_adjust=position_adjust),
            self.web_corner(column, row - 1, left=True, top=False,
                            z_offset=z_offset, thickness=thickness,
                            size_adjust=size_adjust, position_adjust=position_adjust),
        )

    def web_all(self, z_offset: float = 0, thickness: Optional[float] = None, size_adjust: Optional[XYAdjustCallback] = None, position_adjust: Optional[XYAdjustCallback] = None) -> OpenSCADObject:
        """Return the complete "web" between all key positions in this layout.thumb_place_all

        :param z_offset: the offset in the Z direction of the corner blocks (before placing at the key positions)
        :param thickness: the thickness of the web; if None, default to self.web_thickness
        :param size_adjust: a callback to adjust the size of the key at this column and row
        :param position_adjust: a callback to adjust the position of the key at this column and row
        """
        web_kwargs = {
            'z_offset': z_offset,
            'thickness': thickness,
            'size_adjust': size_adjust,
            'position_adjust': position_adjust,
        }

        return reduce(
            operator.add,
            chain(
                (
                    self.web_top_left_of(column, row, **web_kwargs)
                    for (column, row) in self.generate_positions()
                    if column > 0 and row > 0
                ),
                (
                    self.web_left_of(column, row, **web_kwargs)
                    for (column, row) in self.generate_positions()
                    if column > 0
                ),
                (
                    self.web_above(column, row, **web_kwargs)
                    for (column, row) in self.generate_positions()
                    if row > 0
                ),
            )
        )
