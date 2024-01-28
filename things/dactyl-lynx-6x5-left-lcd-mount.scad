include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.11/site-packages/solid2/extensions/bosl2/BOSL2/version.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.11/site-packages/solid2/extensions/bosl2/BOSL2/constants.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.11/site-packages/solid2/extensions/bosl2/BOSL2/transforms.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.11/site-packages/solid2/extensions/bosl2/BOSL2/distributors.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.11/site-packages/solid2/extensions/bosl2/BOSL2/mutators.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.11/site-packages/solid2/extensions/bosl2/BOSL2/color.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.11/site-packages/solid2/extensions/bosl2/BOSL2/attachments.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.11/site-packages/solid2/extensions/bosl2/BOSL2/shapes3d.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.11/site-packages/solid2/extensions/bosl2/BOSL2/shapes2d.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.11/site-packages/solid2/extensions/bosl2/BOSL2/drawing.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.11/site-packages/solid2/extensions/bosl2/BOSL2/masks3d.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.11/site-packages/solid2/extensions/bosl2/BOSL2/masks2d.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.11/site-packages/solid2/extensions/bosl2/BOSL2/math.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.11/site-packages/solid2/extensions/bosl2/BOSL2/paths.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.11/site-packages/solid2/extensions/bosl2/BOSL2/lists.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.11/site-packages/solid2/extensions/bosl2/BOSL2/comparisons.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.11/site-packages/solid2/extensions/bosl2/BOSL2/linalg.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.11/site-packages/solid2/extensions/bosl2/BOSL2/trigonometry.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.11/site-packages/solid2/extensions/bosl2/BOSL2/vectors.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.11/site-packages/solid2/extensions/bosl2/BOSL2/affine.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.11/site-packages/solid2/extensions/bosl2/BOSL2/coords.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.11/site-packages/solid2/extensions/bosl2/BOSL2/geometry.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.11/site-packages/solid2/extensions/bosl2/BOSL2/regions.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.11/site-packages/solid2/extensions/bosl2/BOSL2/strings.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.11/site-packages/solid2/extensions/bosl2/BOSL2/skin.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.11/site-packages/solid2/extensions/bosl2/BOSL2/vnf.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.11/site-packages/solid2/extensions/bosl2/BOSL2/utility.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.11/site-packages/solid2/extensions/bosl2/BOSL2/partitions.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.11/site-packages/solid2/extensions/bosl2/BOSL2/screws.scad>;

union() {
	translate(v = [-36, 38, 50]) {
		rotate(a = 20, v = [1, 0, 0]) {
			union() {
				difference() {
					cube(center = true, size = [34.8, 45.099999999999994, 3]);
					cube(center = true, size = [26.8, 37.099999999999994, 4]);
					translate(v = [0, 0, -1.8]) {
						cube(center = true, size = [27.8, 39.3, 3]);
					}
				}
				translate(v = [-11.25, -17.0, 0]) {
					translate(v = [0, 0, 0.6]) {
						difference() {
							translate(v = [-1.0, -1.0, 0]) {
								cube(center = true, size = [5.75, 5.75, 1.8]);
							}
							screw_hole($fn = 32, bevel = true, blunt_start = true, length = 1.81, spec = "M2x1", thread = false);
						}
					}
				}
				translate(v = [11.25, -17.0, 0]) {
					rotate(a = [0, 0, 90]) {
						translate(v = [0, 0, 0.6]) {
							difference() {
								translate(v = [-1.0, -1.0, 0]) {
									cube(center = true, size = [5.75, 5.75, 1.8]);
								}
								screw_hole($fn = 32, bevel = true, blunt_start = true, length = 1.81, spec = "M2x1", thread = false);
							}
						}
					}
				}
				translate(v = [11.25, 17.0, 0]) {
					rotate(a = [0, 0, 180]) {
						translate(v = [0, 0, 0.6]) {
							difference() {
								translate(v = [-1.0, -1.0, 0]) {
									cube(center = true, size = [5.75, 5.75, 1.8]);
								}
								screw_hole($fn = 32, bevel = true, blunt_start = true, length = 1.81, spec = "M2x1", thread = false);
							}
						}
					}
				}
				translate(v = [-11.25, 17.0, 0]) {
					rotate(a = [0, 0, 270]) {
						translate(v = [0, 0, 0.6]) {
							difference() {
								translate(v = [-1.0, -1.0, 0]) {
									cube(center = true, size = [5.75, 5.75, 1.8]);
								}
								screw_hole($fn = 32, bevel = true, blunt_start = true, length = 1.81, spec = "M2x1", thread = false);
							}
						}
					}
				}
			}
		}
	}
	hull() {
		translate(v = [-36, 38, 50]) {
			rotate(a = 20, v = [1, 0, 0]) {
				translate(v = [0, -22.549999999999997, 0]) {
					cube(center = true, size = [34.8, 0.01, 3]);
				}
			}
		}
		translate(v = [-100, 0, 0]) {
			mirror(v = [1, 0, 0]) {
				translate(v = [-52, 0, 45]) {
					rotate(a = 15, v = [0, 1, 0]) {
						translate(v = [0, 5, -20]) {
							cube(center = true, size = [10, 0.1, 9]);
						}
					}
				}
			}
		}
	}
	translate(v = [-100, 0, 0]) {
		mirror(v = [1, 0, 0]) {
			translate(v = [-52, 0, 45]) {
				rotate(a = 15, v = [0, 1, 0]) {
					translate(v = [0, 0, -20]) {
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
