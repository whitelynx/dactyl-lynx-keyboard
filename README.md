# The Dactyl Lynx Keyboard

The Dactyl Lynx is a parameterized, split-hand, concave, columnar, ergonomic keyboard.

This is my fork/rewrite of [the original Dactyl][]. I've changed a few things:
* Rewrote the generating code in [Python][] instead of Clojure, using [SolidPython2][] and [spkb][].
* Rotated thumb clusters to be close to vertical (inspired by [the Dactyl-ManuForm][] and the way my thumbs move; see also Viktor Eikman's [DMOTE][] and [Concertina][] keyboards)
* Steeper tenting angle
* 1U or 2U keycaps - easy to source (look for ortholinear keycap sets, or possibly Ergodox sets with a few extra keycaps)
* Added a magnetically-attached back cover, with different variants (plain, or with feet)
* Modified keyswitch holes to support [Kailh hot-swap sockets][]
* Added a [TrackPoint module][] between the `D`, `H`, `B`, and `M` keys (`H`, `J`, `N`, and `M` on QWERTY)
* Added support for [my single-keyswitch hot-swap PCBs][]
* Created a new [RMK][]-based [firmware project][the dactyl-lynx-rmk repo] (RMK is a keyboard firmware system written in [Rust][], with [Vial][] support)

[the original Dactyl]: https://github.com/adereth/dactyl-keyboard
[Python]: https://www.python.org/
[SolidPython2]: https://github.com/jeff-dh/SolidPython/tree/master-2.0.0-beta-dev
[spkb]: https://github.com/whitelynx/spkb
[the Dactyl-ManuForm]: https://github.com/tshort/dactyl-keyboard
[DMOTE]: https://viktor.eikman.se/article/the-dmote/
[Concertina]: https://viktor.eikman.se/article/the-concertina/
[Kailh hot-swap sockets]: https://www.kailhswitch.com/mechanical-keyboard-switches/box-switches/hot-swapping-pcb-socket.html
[TrackPoint module]: https://github.com/alonswartz/trackpoint
[my single-keyswitch hot-swap PCBs]: https://hackaday.io/project/199185-lynxs-single-keyswitch-hotswap-boards
[RMK]: https://github.com/HaoboGu/rmk
[the dactyl-lynx-rmk repo]: https://github.com/whitelynx/dactyl-lynx-rmk
[Vial]: https://get.vial.today
[Rust]: https://www.rust-lang.org/

![Skeleton prototype](https://raw.githubusercontent.com/whitelynx/dactyl-lynx-keyboard/master/resources/skeleton-prototype.jpg)


## Future plans

* Adding mouse buttons and a scroll ball from an [Apple Mighty Mouse][] next to the right-hand thumb cluster
* Adding a thumbstick to the left side
* Mounting the left thumb cluster on a hinge so it swings out of the way to access the thumbstick; when swung out of the way, it can trigger a microswitch to change to the gaming layout
* Multiple user-defined key maps that can be uploaded via USB and easily toggled between on the fly (I want this to replace my [Orbweaver][]) - Maybe use [Vial][]. (~~though Vial has a limitation of 4 layers~~ - it turns out you can force Vial to support more layers! It's still relatively limited, though)
* Adding support for ALPS or Choc switches instead of MX-style switches, along with appropriate hot-swap sockets (this will be mostly implemented in [spkb][] first)

[Apple Mighty Mouse]: https://en.wikipedia.org/wiki/Apple_Mighty_Mouse
[Orbweaver]: https://www2.razer.com/au-en/gaming-keyboards-keypads/razer-orbweaver-chroma

![Preview](https://raw.githubusercontent.com/whitelynx/dactyl-lynx-keyboard/master/resources/preview.png)


## Assembly

### Generating a design

#### Prerequisites

* [Python][] version 3.11 or newer
* [Poetry](https://python-poetry.org/)
* [OpenSCAD](https://openscad.org/downloads.html#snapshots) development snapshot 2024.12.06 or newer
* [POV-Ray][] *(optional, for rendering high-quality images)*

#### Installing dependencies

```bash
poetry install
```

#### Generating

```bash
poetry run python -m dactyl_lynx_keyboard.dactyl_lynx
```

To view the available options:
```bash
poetry run python -m dactyl_lynx_keyboard.dactyl_lynx --help
```

You can then generate STL files from the OpenSCAD files with:
```bash
for model in things/*.scad; do
    openscad --enable lazy-union --enable predictible-output --backend Manifold -o things/$(basename "$model" .scad).stl "$model"
done
```

You can also generate an image of the whole assembly:
```bash
openscad --camera=2,12,10,69.7,0,30,480 --autocenter --colorscheme BeforeDawn --imgsize 3840,1800 -o things/dactyl-lynx-6x5.png things/dactyl-lynx-6x5.scad
```

Or generate a much higher-quality image using [POV-Ray][] by running:
```bash
openscad --enable lazy-union --enable predictible-output --backend Manifold -o things/dactyl-lynx-6x5.pov things/dactyl-lynx-6x5.scad
povray +L/usr/share/povray-3.7/include dactyl-lynx-6x5-1920x950.ini
```
or using any of the other `.ini` files.

[an issue rendering some files this way]: https://github.com/openscad/openscad/issues/5447
[POV-Ray]: https://www.povray.org/


### Printing

Pregenerated STL files are available in the [things/](things/) directory.


### Bill of Materials

* 2x microcontrollers - one of the following ([see QMK docs][] for what combinations make sense)
    * [RP2040 TYPE-C 16MB][] - *recommended*
    * [Raspberry Pi Pico][]
    * [STM32F4x1 Black Pill][]
    * [STM32 Blue Pill][]
    * [QMK Proton C][]
* 2x 4+-conductor jacks and matching cable to connect the two sides using full-duplex serial; one of:
    * 4-pin mini-DIN (A.K.A. S-Video) - *recommended; if accidentally tugged on, it will cleanly disconnect without shorting anything and without pulling the other side of your keyboard off the desk*
    * 4P4C, 6P4C, or similar modular connector (A.K.A. RJ11 or [telephone plug][])
    * TRRS audio jacks - *not recommended; if you use this, be careful to not connect or disconnect the cable while the board is powered on!*
    * any other 4-pin (or more) connector, though be wary of things like USB connectors that would be easy to mistake for other buses
* 74x [MX-style key switches][] *(or maybe Alps-style; I haven't actually checked if that will still work correctly)*
* 74x signal diodes *(1N4148 or similar works well)*
* 74x [Kailh hot-swap sockets][] *(optional - you can pass `socket_shape=mx_plate` to the `KeyboardAssembly` constructor in `dactyl_lynx_keyboard/dactyl_lynx.py` if you want to solder directly to the switches, or pass `socket_shape=mx_plate_with_board_mount` to use either my [MX single keyswitch hot swap board][] or my [Choc single keyswitch hot swap board][]; eventually these will be a command-line option)*
* A set of 74+ keycaps - symmetric unsculpted profiles work best with the sculpted form factor of Dactyl-style boards
    * 72x 1u keycaps
    * 2x 2u keycaps
* 24x [5mm x 3mm cylindrical magnets][], plus an additional 12 for each set of different bottom cases you want
* A USB-C *(or USB Micro-B, depending on your microcontroller)* cable to plug in your keyboard
* connection wires (and ideally some Dupont-style connectors for the microcontroller side of things, so you can swap the microcontroller if/when needed)


[see QMK docs]: https://docs.qmk.fm/#/feature_split_keyboard
[RP2040 TYPE-C 16MB]: https://www.aliexpress.com/item/1005003928558306.html?spm=a2g0o.order_list.order_list_main.23.42c018022ZKVRW
[Raspberry Pi Pico]: https://www.raspberrypi.com/products/raspberry-pi-pico/
[STM32F4x1 Black Pill]: https://github.com/WeActStudio/WeActStudio.MiniSTM32F4x1
[STM32 Blue Pill]: http://www.hiletgo.com/ProductDetail/2169541.html
[QMK Proton C]: https://qmk.fm/proton-c/
[telephone plug]: https://en.wikipedia.org/wiki/Telephone_jack_and_plug
[MX-style key switches]: https://mechanicalkeyboards.com/switches/index.php
[MX single keyswitch hot swap board]: https://www.flux.ai/whitelynx/mx-single-keyswitch-hot-swap-board?editor=pcb_3d
[Choc single keyswitch hot swap board]: https://www.flux.ai/whitelynx/choc-single-keyswitch-hot-swap-board?editor=pcb_3d
[5mm x 3mm cylindrical magnets]: https://www.aliexpress.com/item/1005005118080851.html


### Wiring

This is by no means a comprehensive guide to wiring a keyboard, but here's the approach I chose when building my first Dactyl Lynx:

* use COL2ROW diode orientation
* solder diode leads together for the rows
* use insulated hookup wire for the columns
* pick a pinout for wiring the 4-pin mini-DIN connectors: 
    ![4-pin mini-DIN pinout](https://raw.githubusercontent.com/whitelynx/dactyl-lynx-keyboard/master/resources/4-pin-mini-din-pinout.png)
* connect each column and row of a side to a different color of wire: (aside from some repetition because I ran out of colors)
  |      Position | Left Side  | Right Side | Pin |
  |--------------:|------------|------------|-----|
  |      Column 0 | brown      | brown      | 2   |
  |      Column 1 | red        | black      | 3   |
  |      Column 2 | orange     | white      | 4   |
  |      Column 3 | yellow     | grey       | 5   |
  |      Column 4 | green      | purple     | 6   |
  |      Column 5 | blue       | blue       | 7   |
  |         Row 0 | red        | brown      | 8   |
  |         Row 1 | orange     | red        | 9   |
  |         Row 2 | yellow     | orange     | 10  |
  |         Row 3 | green      | yellow     | 11  |
  |         Row 4 | blue       | green      | 12  |
  | Row 5 (thumb) | purple     | green      | 13  |
  | Row 6 (thumb) | grey       | yellow     | 14  |

  *Note: the right side's color scheme should probably not be used; it's definitely more haphazard because it was done ad-hoc.*
  *Note 2: the top columns cable on the left side finger well is wired in reverse; brown goes to column 5 instead of column 0, and so is on pin 7 instead of 2. The cable connecting to the thumb well is correctly wired, so the colors switch at the column connections.*

Wire according to [the key matrix in my `whitelynx/dactyl_lynx` QMK branch][].


[the key matrix in my `whitelynx/dactyl_lynx` QMK branch]: https://github.com/whitelynx/qmk_firmware/blob/whitelynx/dactyl_lynx/keyboards/handwired/dactyl_lynx/info.json


### Firmware

I've set up two separate firmwares that can be run on this board. The QMK-based variant is more featureful, but I'm devoting more time to the RMK-based one now.

#### RMK-based (new, more minimal)

See [the dactyl-lynx-rmk repo][] for this firmware. It's based on [RMK][]. (with [Vial][] support, written in [Rust][])

#### QMK-based (old, more featureful)

See [the corresponding firmware in my `whitelynx/dactyl_lynx` QMK branch][] for instructions on building and flashing the firmware.

[the corresponding firmware in my `whitelynx/dactyl_lynx` QMK branch]: https://github.com/whitelynx/qmk_firmware/tree/whitelynx/dactyl_lynx/keyboards/handwired/dactyl_lynx


## Customizing

When customizing your keyboard, you might want to look at API docs for the classes in `dactyl_lynx_keyboard`. You can use `pdoc` for this:
```bash
pdoc -t templates dactyl_lynx_keyboard
```

If you have cloned the source for [spkb][] and/or [SolidPython2][], you can also include them:
```bash
pdoc -t templates dactyl_lynx_keyboard ../../spkb ../SolidPython/solid2
```


## License

Copyright © 2015-2024 Matthew Adereth and David H. Bronke

The source code for generating the models (everything excluding the [things/](things/) and [resources/](resources/) directories) is distributed under the [GNU AFFERO GENERAL PUBLIC LICENSE Version 3](LICENSE).  The generated models and PCB designs are distributed under the [Creative Commons Attribution-ShareAlike License Version 4.0](LICENSE-models).
