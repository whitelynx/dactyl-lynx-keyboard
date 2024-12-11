from solid2 import cube, hull, sphere

from spkb.switch_plate import plate_thickness
from spkb.utils import cylinder_outer


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
        self.trackpoint_z_offset = 5

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
        ).down(self.trackpoint_z_offset)

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
        ).down(self.trackpoint_z_offset).color((0, 1, 0))

    def trackpoint_shape(self):
        return (
            (
                cylinder_outer(self.trackpoint_stem_radius, self.trackpoint_stem_length, center=True)
                + sphere(self.trackpoint_ball_radius, _fn=12).translate((0, 0, self.trackpoint_stem_length / 2))
            ).translate((0, 0, self.trackpoint_stem_length / 2 - self.trackpoint_mount_thickness + self.trackpoint_stem_base_height))
        ).down(self.trackpoint_z_offset).color((0.8, 0.8, 0.8))
