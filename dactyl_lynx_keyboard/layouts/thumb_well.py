import math
import operator
from functools import reduce
from itertools import chain

from solid2 import hull

from spkb.switch_plate import mount_width

from .layout import Layout


class ThumbWellLayout(Layout):
    def __init__(self, columns=3, rows=3, wall_thickness=1.5):
        super(ThumbWellLayout, self).__init__(columns=columns, rows=rows, wall_thickness=wall_thickness)

        # Cupping amounts, in radians per row/column
        self.rad_per_row = math.pi / 12
        self.rad_per_col = math.pi / 8

        self.placement_transform = (-54, -77, 7.3)

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
