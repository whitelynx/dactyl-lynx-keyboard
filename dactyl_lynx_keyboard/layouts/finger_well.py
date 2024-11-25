import math
import operator
from functools import reduce
from itertools import chain

from .layout import Layout


class FingerWellLayout(Layout):
    def __init__(self, columns=6, rows=5, use_1_5u_keys=True, wall_thickness=1.5):
        super(FingerWellLayout, self).__init__(columns=columns, rows=rows, wall_thickness=wall_thickness)

        self.use_1_5u_keys = use_1_5u_keys

        self.placement_transform = (0, 0, 29.3)

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
            return shape.translate((0, -20.8, 7.64))
        else:
            return shape

    def layout_place(self, shape):
        """Place the layout.

        :param shape: the shape to place
        """
        return shape \
            .rotate(math.degrees(math.pi / 10), (0, 1, 0)) \
            .rotate(math.degrees(math.pi / 10), (1, 0, 0)) \
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
