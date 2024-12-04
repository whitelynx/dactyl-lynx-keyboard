// Render using:
//   povray +L/usr/share/povray-3.7/include dactyl-lynx-6x5-1920x1440.ini;
#version 3.7;
#include "things/dactyl-lynx-6x5.pov"
camera {
	look_at <-4, 2, 0>
	location <0, 0, 920>
	angle 22.5 up <0, 1, 0> right <1, 0, 0> sky <0, 1, 0> right -x*image_width/image_height
	translate <4.7421, 2.91363, 15.4968>
	rotate <52.9, 0 + clock * 3, 37.2 + clock>
}
background { color rgb <0.01, 0.01, 0.01> }
