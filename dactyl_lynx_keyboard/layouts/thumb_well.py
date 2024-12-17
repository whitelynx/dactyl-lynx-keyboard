"""The layout of a thumb well.
"""
import math
import operator
from collections.abc import Iterable
from functools import reduce
from itertools import chain
from typing import Optional, Tuple

from solid2 import hull
from solid2.core.object_base import OpenSCADObject

from spkb.keyswitch import Keyswitch, MX

from .layout import Layout, XYAdjustCallback


class ThumbWellLayout(Layout):
    """The layout of a thumb well.
    """
    def __init__(self, columns: int = 3, rows: int = 3, keyswitch: Keyswitch = MX()):
        super(ThumbWellLayout, self).__init__(columns=columns, rows=rows, keyswitch=keyswitch)

        # Cupping amounts, in radians per row/column
        self.rad_per_row = math.pi / 12
        self.rad_per_col = math.pi / 8

        self.placement_transform = (-54, -77, 7.3)

    def generate_positions(self) -> Iterable[Tuple[float, float]]:
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

    def placement_adjust(self, column: float, row: float, shape: OpenSCADObject) -> OpenSCADObject:
        """Adjust the position of the given key/location in the layout.

        :param column: the column to place the key in
        :param row: the row to place the key in
        :param shape: the shape to place
        """
        if (isinstance(row, float) and not row.is_integer()) or (isinstance(column, float) and not column.is_integer()):
            return shape.translate((0, 0, 1))
        else:
            return shape

    def layout_place(self, shape: OpenSCADObject) -> OpenSCADObject:
        """Place the layout.

        :param shape: the shape to place
        """
        return shape \
            .translate((17, 0, 3)) \
            .rotate(math.degrees(math.pi / 2.8), (0, 1, 0)) \
            .rotate(math.degrees(math.pi * 9/32), (0, 0, 1)) \
            .rotate(math.degrees(math.pi / 14), (1, 1, 0)) \
            .rotate(math.degrees(math.pi / (-11/6)), (-1, 1, 0)) \
            .rotate(math.degrees(math.pi / -20), (0, 1, 0)) \
            .rotate(15, (1, 1, 1)) \
            .translate(self.placement_transform)

    def web_all(self, z_offset: float = 0, thickness: Optional[float] = None, size_adjust: Optional[XYAdjustCallback] = None, position_adjust: Optional[XYAdjustCallback] = None) -> OpenSCADObject:
        """Return the complete "web" between all key positions in this layout.

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
                    if column > 0 and row > -1 and (column, row) not in (
                        (1, 0),
                        (1, 1),
                    )
                ),
                (
                    self.web_left_of(column, row, **web_kwargs)
                    for (column, row) in self.generate_positions()
                    if column > 0 and (column, row) not in (
                        (1, 0),
                        (1, 1),
                    )
                ),
                (
                    self.web_above(column, row, **web_kwargs)
                    for (column, row) in self.generate_positions()
                    if row > -1 and (column, row) not in (
                        (0, 1/2),
                        (0, -1),
                    )
                ),
                [
                    hull()(
                        self.web_corner(0, 1/2, left=False, top=True, row_span=2, **web_kwargs),
                        self.web_corner(0, -1, left=False, top=False, **web_kwargs),
                        self.web_corner(1, -1, left=True, top=False, **web_kwargs),
                        self.web_corner(1, 0, left=True, top=True, **web_kwargs),
                    ),
                    hull()(
                        self.web_corner(0, -1, left=True, top=False, **web_kwargs),
                        self.web_corner(0, -1, left=False, top=False, **web_kwargs),
                        self.web_corner(0, 1/2, left=False, top=True, row_span=2, **web_kwargs),
                        self.web_corner(0, 1/2, left=True, top=True, row_span=2, **web_kwargs),
                    ),
                    hull()(
                        self.web_corner(0, 1/2, left=False, top=False, row_span=2, **web_kwargs),
                        self.web_corner(1, 1, left=True, top=True, **web_kwargs),
                        self.web_corner(1, 1, left=True, top=False, **web_kwargs),
                    ),
                    hull()(
                        self.web_corner(0, 1/2, left=False, top=False, row_span=2, **web_kwargs),
                        self.web_corner(0, 1/2, left=False, top=True, row_span=2, **web_kwargs),
                        self.web_corner(1, 0, left=True, top=False, **web_kwargs),
                        self.web_corner(1, 1, left=True, top=True, **web_kwargs),
                    ),
                    hull()(
                        self.web_corner(0, 1/2, left=False, top=True, row_span=2, **web_kwargs),
                        self.web_corner(1, 0, left=True, top=False, **web_kwargs),
                        self.web_corner(1, 0, left=True, top=True, **web_kwargs),
                    ),
                ],
            )
        )
