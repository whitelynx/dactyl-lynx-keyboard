from collections.abc import Iterable
from itertools import chain, pairwise
from typing import Tuple

from solid2 import cube, hull, sphere, union
from solid2.core.object_base import OpenSCADObject
from solid2.extensions.bosl2 import screws

from spkb.switch_plate import (
    keyswitch_length,
    keyswitch_width,
    plate_thickness,
    mx_plate_with_backplate,
)
from spkb.board_mount import stm32_blackpill
from spkb.keycaps import sa_double_length
from spkb.utils import cylinder_outer, fudge_radius, nothing

from layouts.finger_well import FingerWellLayout
from layouts.thumb_well import ThumbWellLayout
from mini_din_connector_mount import MiniDINConnectorMount
from trackpoint_mount import TrackPointMount


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

        self.enable_trackpoint = True
        self.enable_nuts = False
        self.bottom_thumb_nuts = False

        self.bottom_cover_offset = 11
        self.bottom_cover_edge_protusion = self.finger_layout.keyswitch_length - 1
        self.bottom_cover_thickness = 3
        self.bottom_cover_post_size = 0.2
        self.bottom_cover_magnet_mount_thickness = 1.5
        self.bottom_cover_magnet_radius = 2.5
        self.bottom_cover_magnet_thickness = 3

    def transform_finger_nut1(self, shape):
        """Place the given shape at the position and orientation of the first finger nut.

        This is the nut at the top outside corner of the finger well. (above column 5, row 0)

        :param shape: the shape to place
        """
        return shape \
            .rotate(20, (1, 0, 0)) \
            .translate((64, 45, 45))

    def transform_finger_nut2(self, shape):
        """Place the given shape at the position and orientation of the second finger nut.

        This is the nut at the bottom outside corner of the finger well. (next to column 5, row 4)

        :param shape: the shape to place
        """
        return shape \
            .rotate(-15, (1, 0, 0)) \
            .rotate(-5, (0, 1, 0)) \
            .translate((78, -49, 10))

    def transform_finger_nut3(self, shape):
        """Place the given shape at the position and orientation of the third finger nut.

        This is the nut in the middle of the inside edge of the finger well. (next to column 0, row 1)

        :param shape: the shape to place
        """
        return shape \
            .rotate(15, (0, 1, 0)) \
            .rotate(9, (1, 0, 0)) \
            .translate((-54, 16, 49))

    def transform_board(self, shape):
        """Place the given shape at the position and orientation of the microcontroller board mount.

        :param shape: the shape to place
        """
        return shape \
            .rotate(90, (0, 0, 1)) \
            .rotate(-120, (1, 0, 0)) \
            .rotate(17, (0, 1, 0)) \
            .translate((-19, 53, 74.3))

    def transform_connector_mount(self, shape):
        """Place the given shape at the position and orientation of the Mini-DIN connector mount.

        :param shape: the shape to place
        """
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
        """Place the given shape at the position and orientation of the TrackPoint module.

        :param shape: the shape to place
        """
        return self.finger_layout.key_place(0.5, 2.5, shape)

    def transform_thumb_nut1(self, shape):
        """Place the given shape at the position and orientation of the first thumb nut.

        This is the nut in the bottom outside corner of the thumb well. (at the corner of column 0, row 0.5)

        :param shape: the shape to place
        """
        return shape \
            .rotate(-10, (1, 0, 0)) \
            .rotate(5, (0, 1, 0)) \
            .rotate(48, (0, 0, 1)) \
            .translate((20, -25, 9)) \
            .rotate(10, (1, 1, 1)) \
            .translate(self.thumb_layout.placement_transform)

    def transform_thumb_nut2(self, shape):
        """Place the given shape at the position and orientation of the second thumb nut.

        This is the nut in the bottom inside corner of the thumb well. (next to column 0, row -1)

        :param shape: the shape to place
        """
        return shape \
            .rotate(10, (1, 0, 0)) \
            .rotate(68, (0, 0, 1)) \
            .translate((-32, 30, 4)) \
            .rotate(10, (1, 1, 1)) \
            .translate(self.thumb_layout.placement_transform)

    def transform_thumb_nut3(self, shape):
        """Place the given shape at the position and orientation of the third thumb nut.

        This is the nut behind the thumb well. (to attach to the web between column 1, row -1 and column 2, row -1)

        :param shape: the shape to place
        """
        return shape \
            .rotate(-15, (1, 0, 0)) \
            .rotate(-20, (0, 0, 1)) \
            .rotate(-10, (0, 1, 0)) \
            .translate((-3, 57, 33.2)) \
            .rotate(10, (1, 1, 1)) \
            .translate(self.thumb_layout.placement_transform)

    def switch_socket(self, column, row):
        """Generate the switch plate socket for the given keyswitch.

        :param column: the column of the keyswitch
        :type column: number

        :param row: the row of the keyswitch
        :type row: number
        """
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
        """Generate the portion of the bottom cover below the given keyswitch.

        :param column: the column of the keyswitch
        :type column: number

        :param row: the row of the keyswitch
        :type row: number
        """
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
        """Generate the finger part of the assembly.

        This includes the finger well, the board mount, and the Mini-DIN connector mount.
        """
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

        if self.enable_trackpoint and not self.left_side:
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
        sphere_radii = {}
        if isinstance(sphere_radius, (int, float)):
            sphere_radii['r'] = sphere_radius
        elif isinstance(sphere_radius, (tuple, list)):
            sphere_radii['r1'], sphere_radii['r2'] = sphere_radius

        shape = (
            cylinder_outer(radius, self.bottom_cover_magnet_thickness, center=True)
            .up(self.bottom_cover_magnet_thickness / 2)
            + (sphere(_fn=16, **sphere_radii) - cube(radius * 2, radius * 2, radius * 2, center=True).down(radius))
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

    def cover_edge_corner(self,
                          side: bool,
                          column: float,
                          row: float,
                          left: bool,
                          top: bool,
                          top_shell: bool,
                          offset_along_edge: float = 0,
                          outer: bool = False,
                          ):
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
            + (  # TODO: Add attachment between nuts and cover
                self.transform_finger_nut1(self.tenting_nut)
                + self.transform_finger_nut2(self.tenting_nut)
                + self.transform_finger_nut3(self.tenting_nut)
            ) if self.enable_nuts else nothing
        )

    def finger_bottom_cover_feet(self):
        """Generate fixed feet to union with the bottom cover.
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
        """Generate the thumb part of the assembly.

        This includes the thumb well and the thumb nuts.
        """
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
                ) if self.enable_nuts and self.bottom_thumb_nuts else nothing
            )
        )

        if self.use_color:
            return shape.color((0.1, 0.1, 0.1))

        return shape

    def connector(self):
        """Generate the separate connector piece between the finger and thumb wells.
        """
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
        """Generate the single-piece upper assembly.

        This includes the finger part (finger well, board mount, and Mini-DIN connector mount) and thumb part (thumb
        well and thumb nuts), as well as mouns for magnets to attach the bottom cover.
        """
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
