include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/version.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/constants.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/transforms.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/distributors.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/mutators.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/color.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/attachments.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/shapes3d.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/shapes2d.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/drawing.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/masks3d.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/masks2d.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/math.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/paths.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/lists.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/comparisons.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/linalg.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/trigonometry.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/vectors.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/affine.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/coords.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/geometry.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/regions.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/strings.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/skin.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/vnf.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/utility.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/partitions.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/screws.scad>;

union() {
	translate(v = [-54, 16, 49]) {
		rotate(a = 9, v = [1, 0, 0]) {
			rotate(a = 15, v = [0, 1, 0]) {
				translate(v = [0, 0, -10]) {
					difference() {
						cube(center = true, size = [10, 10, 10]);
						screw_hole($fn = 32, bevel = true, blunt_start = true, length = 10.01, spec = "M6x1", thread = false);
					}
				}
			}
		}
	}
	translate(v = [-54, -72, 0]) {
		rotate(a = 10, v = [1, 1, 1]) {
			translate(v = [-3, 57, 33.2]) {
				rotate(a = -10, v = [0, 1, 0]) {
					rotate(a = -20, v = [0, 0, 1]) {
						rotate(a = -15, v = [1, 0, 0]) {
							translate(v = [0, 0, -10]) {
								difference() {
									cube(center = true, size = [10, 10, 10]);
									screw_hole($fn = 32, bevel = true, blunt_start = true, length = 10.01, spec = "M6x1", thread = false);
								}
							}
						}
					}
				}
			}
		}
	}
	hull() {
		translate(v = [-54, 16, 49]) {
			rotate(a = 9, v = [1, 0, 0]) {
				rotate(a = 15, v = [0, 1, 0]) {
					translate(v = [0, -5, -10]) {
						cube(center = true, size = [10, 0.1, 10]);
					}
				}
			}
		}
		translate(v = [-54, -72, 0]) {
			rotate(a = 10, v = [1, 1, 1]) {
				translate(v = [-3, 57, 33.2]) {
					rotate(a = -10, v = [0, 1, 0]) {
						rotate(a = -20, v = [0, 0, 1]) {
							rotate(a = -15, v = [1, 0, 0]) {
								translate(v = [0, 5, -10]) {
									cube(center = true, size = [10, 0.1, 10]);
								}
							}
						}
					}
				}
			}
		}
	}
}
