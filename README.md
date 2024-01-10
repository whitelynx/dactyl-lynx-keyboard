# The Dactyl Lynx Keyboard
The Dactyl Lynx is a parameterized, split-hand, concave, columnar, ergonomic keyboard.

This is my fork/rewrite of [the original Dactyl][]. I've changed a few things:
* Rewrote the generating code in [Python][] instead of Clojure, using [SolidPython2][] and [spkb][].
* Rotated thumb clusters to be close to vertical (inspired by [the Dactyl-ManuForm][] and the way my thumbs move; see also Viktor Eikman's [DMOTE][] and [Concertina][] keyboards)
* Steeper tenting angle
* Ergodox-compatible keycaps! (it doesn't use _all_ of the Ergodox keys, but the keys it has should all be able to be sourced from [Ergodox keycap sets][] - effectively the same as [the Phat Dactyl][])
* A new adjustable skeletal design (which will probably change once I solidify the physical placement of the wells, but I'll likely keep around as an option)
* Modified keyswitch holes to support [Kailh hot-swap sockets][]

[the original Dactyl]: https://github.com/adereth/dactyl-keyboard
[Python]: https://www.python.org/
[SolidPython2]: https://github.com/jeff-dh/SolidPython/tree/master-2.0.0-beta-dev
[spkb]: https://github.com/whitelynx/spkb
[the Dactyl-ManuForm]: https://github.com/tshort/dactyl-keyboard
[DMOTE]: https://viktor.eikman.se/article/the-dmote/
[Concertina]: https://viktor.eikman.se/article/the-concertina/
[Ergodox keycap sets]: https://www.reddit.com/r/ergodox/comments/gu4cbm/every_site_for_ergodox_keycaps_that_are_currently/
[the Phat Dactyl]: https://github.com/adereth/dactyl-keyboard/pull/48
[Kailh hot-swap sockets]: https://www.kailhswitch.com/mechanical-keyboard-switches/box-switches/hot-swapping-pcb-socket.html

![Skeleton prototype](https://raw.githubusercontent.com/whitelynx/dactyl-keyboard/master/resources/skeleton-prototype.jpg)


## Future plans
* Adding a [TrackPoint module][] between the `D`, `H`, `B`, and `M` keys (`H`, `J`, `N`, and `M` on QWERTY) - I already implemented this in the Clojure version, but I haven't yet ported it to the Python version
* Adding mouse buttons (and maybe a scroll wheel?) next to the right-hand thumb cluster
* Adding a thumbstick to the left side?
* Multiple user-defined key maps that can be uploaded via USB and easily toggled between on the fly (I want this to replace my [Orbweaver][]) - Use [QMK's Raw HID support][].
* Adding support for ALPS or Choc switches instead of MX-style switches, along with appropriate hot-swap sockets (this will be mostly implemented in [spkb][] first)

[TrackPoint module]: https://github.com/alonswartz/trackpoint
[Orbweaver]: https://www2.razer.com/au-en/gaming-keyboards-keypads/razer-orbweaver-chroma
[QMK's Raw HID support]: https://docs.qmk.fm/#/feature_rawhid


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
Pregenerated STL files are available in the [things/](things/) directory.


### Bill of Materials
* 2x microcontrollers - one of the following (see QMK docs for what combinations make sense)
    * ARM-based: [(see QMK documentation!)][]
        * [RP2040 TYPE-C 16MB][] - _recommended_
        * [Raspberry Pi Pico][]
        * [STM32F4x1 Black Pill][]
        * [STM32 Blue Pill][]
        * [QMK Proton C][]
* 2x 4+-conductor jacks and matching cable to connect the two sides using full-duplex serial; one of:
    * 4-pin mini-DIN (A.K.A. S-Video) - _recommended_
    * TRRS audio jacks - _not recommended; if you use this, be careful to not connect or disconnect the cable while the board is powered on!_
    * any other 4-pin (or more) connector, though be wary of things like USB connectors that would be easy to mistake for other buses
* 70x [MX-style key switches][] _(or maybe Alps-style; I haven't actually checked if that will still work correctly)_
* 70x signal diodes _(1N4148 or similar works well)_
* 70x [Kailh hot-swap sockets][] _(optional - you can replace all mentions of `mx_plate_with_backplate` with `mx_plate` in <src/dactyl_lynx_keyboard/dactyl_lynx.py> if you want to solder directly to the switches; eventually this will be a command-line option)_
* A set of 70+ keycaps - ErgoDox keycap sets work well, and symmetric unsculpted profiles work best with the sculpted form factor of Dactyl-style boards
    * 56x 1u keycaps
    * 10x 1.5u keycaps
    * 4x 2u keycaps
* A USB-C _(or USB Micro-B, depending on your microcontroller)_ to USB A cable to plug in your keyboard
* connection wires (and ideally some Dupont-style connectors for the microcontroller side of things, so you can swap the microcontroller if/when needed)


[(see QMK documentation!)]: https://docs.qmk.fm/#/feature_split_keyboard
[RP2040 TYPE-C 16MB]: https://www.aliexpress.com/item/1005003928558306.html?spm=a2g0o.order_list.order_list_main.23.42c018022ZKVRW
[Raspberry Pi Pico]: https://www.raspberrypi.com/products/raspberry-pi-pico/
[STM32F4x1 Black Pill]: https://github.com/WeActStudio/WeActStudio.MiniSTM32F4x1
[STM32 Blue Pill]: http://www.hiletgo.com/ProductDetail/2169541.html
[QMK Proton C]: https://qmk.fm/proton-c/
[Arduino Micro]: https://store.arduino.cc/products/arduino-micro
[SparkFun Pro Micro]: https://www.sparkfun.com/products/12640
[SparkFun Qwiic Pro Micro - USB-C]: https://www.sparkfun.com/products/15795
[Arduino Pro Mini]: https://docs.arduino.cc/retired/boards/arduino-pro-mini
[PJRC Teensy]: https://www.pjrc.com/teensy/
[MX-style key switches]: https://mechanicalkeyboards.com/switches/index.php


## License

Copyright © 2015-2023 Matthew Adereth and David H. Bronke

The source code for generating the models (everything excluding the [things/](things/) and [resources/](resources/) directories) is distributed under the [GNU AFFERO GENERAL PUBLIC LICENSE Version 3](LICENSE).  The generated models and PCB designs are distributed under the [Creative Commons Attribution-ShareAlike License Version 4.0](LICENSE-models).


---


# Old Clojure-based Instructions Below #

![Old preview render](https://raw.githubusercontent.com/whitelynx/dactyl-keyboard/master/resources/preview.png)

## Assembly

### Generating a Design

**Setting up the Clojure environment**
* [Install the Clojure runtime](https://clojure.org)
* [Install the Leiningen project manager](http://leiningen.org/)
* [Install OpenSCAD](http://www.openscad.org/)

**Generating the design**
* Run `lein repl`
* Load the file `(load-file "src/dactyl_keyboard/dactyl.clj")`
* This will regenerate the `things/*.scad` files
* Use OpenSCAD to open a `.scad` file.
* Make changes to design, repeat `load-file`, OpenSCAD will watch for changes and rerender.
* When done, use OpenSCAD to export STL files

**Tips**
* [Some other ways to evaluate the clojure design file](http://stackoverflow.com/a/28213489)
* [Example designing with clojure](http://adereth.github.io/blog/2014/04/09/3d-printing-with-clojure/)


### Wiring
A [very rough guide for the brave is here](guide/README.org#wiring) - It will be improved over time (**TODO**)!
