# The Dactyl Lynx Keyboard

The Dactyl Lynx is a parameterized, split-hand, concave, columnar, ergonomic keyboard.

This is my fork/rewrite of [the original Dactyl][]. I've changed a few things:
* Rewrote the generating code in [Python][] instead of Clojure, using [SolidPython2][] and [spkb][].
* Rotated thumb clusters to be close to vertical (inspired by [the Dactyl-ManuForm][] and the way my thumbs move; see also Viktor Eikman's [DMOTE][] and [Concertina][] keyboards)
* Steeper tenting angle
* 1U or 2U keycaps - easy to source (look for ortholinear keycap sets, or possibly Ergodox sets with a few extra keycaps)
* A new adjustable skeletal design (which will probably change once I solidify the physical placement of the wells, but I'll likely keep around as an option)
* Modified keyswitch holes to support [Kailh hot-swap sockets][]

[the original Dactyl]: https://github.com/adereth/dactyl-keyboard
[Python]: https://www.python.org/
[SolidPython2]: https://github.com/jeff-dh/SolidPython/tree/master-2.0.0-beta-dev
[spkb]: https://github.com/whitelynx/spkb
[the Dactyl-ManuForm]: https://github.com/tshort/dactyl-keyboard
[DMOTE]: https://viktor.eikman.se/article/the-dmote/
[Concertina]: https://viktor.eikman.se/article/the-concertina/
[Kailh hot-swap sockets]: https://www.kailhswitch.com/mechanical-keyboard-switches/box-switches/hot-swapping-pcb-socket.html

![Skeleton prototype](https://raw.githubusercontent.com/whitelynx/dactyl-lynx-keyboard/master/resources/skeleton-prototype.jpg)


## Future plans

* Adding a [TrackPoint module][] between the `D`, `H`, `B`, and `M` keys (`H`, `J`, `N`, and `M` on QWERTY) - I already implemented this in the Clojure version, but I haven't yet ported it to the Python version
* Adding mouse buttons and a scroll ball from an [Apple Mighty Mouse][] next to the right-hand thumb cluster
* Adding a thumbstick to the left side?
* Multiple user-defined key maps that can be uploaded via USB and easily toggled between on the fly (I want this to replace my [Orbweaver][]) - Use [QMK's Raw HID support][] or maybe [Vial][]. (though Vial has a limitation of 4 layers)
* Adding support for ALPS or Choc switches instead of MX-style switches, along with appropriate hot-swap sockets (this will be mostly implemented in [spkb][] first)

[TrackPoint module]: https://github.com/alonswartz/trackpoint
[Apple Mighty Mouse]: https://en.wikipedia.org/wiki/Apple_Mighty_Mouse
[Orbweaver]: https://www2.razer.com/au-en/gaming-keyboards-keypads/razer-orbweaver-chroma
[QMK's Raw HID support]: https://docs.qmk.fm/#/feature_rawhid
[Vial]: https://get.vial.today/


## Assembly

### Generating a design

#### Prerequisites

* [Python][] version 3.11 or newer
* [pipenv](https://pipenv.pypa.io/en/latest/)

#### Installing dependencies

```bash
pipenv install
```

#### Generating

```bash
pipenv run python src/dactyl_lynx_keyboard/dactyl_lynx.py
```

To view the available options:
```bash
pipenv run python src/dactyl_lynx_keyboard/dactyl_lynx.py --help
```


### Printing

~~Pregenerated STL files are available in the [things/](things/) directory.~~
For now, you're better off generating the model directly instead of using any of the existing files in the `things/` directory.


### Bill of Materials

* 2x microcontrollers - one of the following ([see QMK docs][] for what combinations make sense)
    * [RP2040 TYPE-C 16MB][] - _recommended_
    * [Raspberry Pi Pico][]
    * [STM32F4x1 Black Pill][]
    * [STM32 Blue Pill][]
    * [QMK Proton C][]
* 2x 4+-conductor jacks and matching cable to connect the two sides using full-duplex serial; one of:
    * 4-pin mini-DIN (A.K.A. S-Video) - _recommended; if accidentally tugged on, it will cleanly disconnect without shorting anything and without pulling the other side of your keyboard off the desk_
    * 4P4C, 6P4C, or similar modular connector (A.K.A. RJ11 or [telephone plug][])
    * TRRS audio jacks - _not recommended; if you use this, be careful to not connect or disconnect the cable while the board is powered on!_
    * any other 4-pin (or more) connector, though be wary of things like USB connectors that would be easy to mistake for other buses
* 74x [MX-style key switches][] _(or maybe Alps-style; I haven't actually checked if that will still work correctly)_
* 74x signal diodes _(1N4148 or similar works well)_
* 74x [Kailh hot-swap sockets][] _(optional - you can pass `socket_shape=mx_plate` to the `KeyboardAssembly` constructor in `dactyl_lynx_keyboard/dactyl_lynx.py` if you want to solder directly to the switches, or pass `socket_shape=mx_plate_with_board_mount` to use either my [MX single keyswitch hot swap board][] or my [Choc single keyswitch hot swap board][]; eventually these will be a command-line option)_
* A set of 74+ keycaps - symmetric unsculpted profiles work best with the sculpted form factor of Dactyl-style boards
    * 72x 1u keycaps
    * 2x 2u keycaps
* A USB-C _(or USB Micro-B, depending on your microcontroller)_ cable to plug in your keyboard
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

  _Note: the right side's color scheme should probably not be used; it's definitely more haphazard because it was done ad-hoc._
  _Note 2: the top columns cable on the left side finger well is wired in reverse; brown goes to column 5 instead of column 0, and so is on pin 7 instead of 2. The cable connecting to the thumb well is correctly wired, so the colors switch at the column connections._

Wire according to [the key matrix in my `whitelynx/dactyl_lynx` QMK branch][].


[the key matrix in my `whitelynx/dactyl_lynx` QMK branch]: https://github.com/whitelynx/qmk_firmware/blob/whitelynx/dactyl_lynx/keyboards/handwired/dactyl_lynx/info.json


### Firmware

See [the corresponding firmware in my `whitelynx/dactyl_lynx` QMK branch][] for instructions on building and flashing the firmware.


[the corresponding firmware in my `whitelynx/dactyl_lynx` QMK branch]: https://github.com/whitelynx/qmk_firmware/tree/whitelynx/dactyl_lynx/keyboards/handwired/dactyl_lynx


## License

Copyright © 2015-2024 Matthew Adereth and David H. Bronke

The source code for generating the models (everything excluding the [things/](things/) and [resources/](resources/) directories) is distributed under the [GNU AFFERO GENERAL PUBLIC LICENSE Version 3](LICENSE).  The generated models and PCB designs are distributed under the [Creative Commons Attribution-ShareAlike License Version 4.0](LICENSE-models).
