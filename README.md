# The Dactyl Lynx Keyboard
The Dactyl Lynx is a parameterized, split-hand, concave, columnar, ergonomic keyboard.

This is my fork of [the original Dactyl][]. I've changed a few things:
* Rotated thumb clusters to be close to vertical (inspired by [the Dactyl-ManuForm][] and the way my thumbs move)
* Steeper tenting angle
* Ergodox-compatible keycaps! (it doesn't use _all_ of the Ergodox keys, but the keys it has should all be able to be sourced from [Ergodox keycap sets][] - effectively the same as [the Phat Dactyl][])
* A simpler one-piece chassis
* Modified keyswitch holes to support [Kailh hot-swap sockets][]
* Added a [TrackPoint module][] between the `D`, `H`, `B`, and `M` keys (`H`, `J`, `N`, and `M` on QWERTY)

[the original Dactyl]: https://github.com/adereth/dactyl-keyboard
[the Dactyl-ManuForm]: https://github.com/tshort/dactyl-keyboard
[Ergodox keycap sets]: https://www.reddit.com/r/ergodox/comments/gu4cbm/every_site_for_ergodox_keycaps_that_are_currently/
[the Phat Dactyl]: https://github.com/adereth/dactyl-keyboard/pull/48
[Kailh hot-swap sockets]: https://www.kailhswitch.com/mechanical-keyboard-switches/box-switches/hot-swapping-pcb-socket.html
[TrackPoint module]: https://github.com/alonswartz/trackpoint

![Preview render](https://raw.githubusercontent.com/whitelynx/dactyl-keyboard/master/resources/preview.png)


## Future plans
* Adding mouse buttons (and maybe a scroll wheel?) next to the right-hand thumb cluster
* Adding a thumbstick to the left side?
* Multiple user-defined key maps that can be uploaded via USB and easily toggled between on the fly (I want this to replace my [Orbweaver][]) - Use [QMK's Raw HID support][].

[Orbweaver]: https://www2.razer.com/au-en/gaming-keyboards-keypads/razer-orbweaver-chroma
[QMK's Raw HID support]: https://beta.docs.qmk.fm/using-qmk/software-features/feature_rawhid


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


### Printing
Pregenerated STL files are available in the [things/](things/) directory.


### Bill of Materials
* 2x microcontrollers - some combination of the following (see QMK docs for what combinations make sense)
    * ATmega-based:
        * [SparkFun Pro Micro][] or possibly [SparkFun Qwiic Pro Micro - USB-C][]
        * [Arduino Pro Mini][]
    * ARM-based: [(see QMK documentation!)][]
        * [Black Pill][]
        * [Blue Pill][]
        * [QMK Proton C][]
    * Other:
        * [PJRC Teensy][] _(Caveat: not sure *which* Teensy is actually supported by the board settings we have)_
* 2x 4+-conductor jacks and matching cable to connect the two sides using I2C; one of:
    * 4-pin mini-DIN (A.K.A. S-Video) - _recommended_
    * TRRS audio jacks - _not recommended; if you use this, be careful to not connect or disconnect the cable while the board is powered on!_
    * any other 4-pin (or more) connector, though be wary of things like USB connectors that would be easy to mistake for other buses
* 70x [MX-style key switches][] _(or maybe Alps-style; I haven't actually checked if that will still work correctly)_
* 70x signal diodes _(1N4148 or similar works well)_
* 70x [Kailh hot-swap sockets][] _(optional - you can change the definition of `single-plate` in <src/dactyl_keyboard/dactyl.clj> to use `cherry-plate-with-key-mount` instead of `cherry-plate-with-key-mount-and-backplate` if you want to solder directly to the switches)_
* A set of 70+ keycaps - ErgoDox keycap sets work well, and symmetric unsculpted profiles work best with the sculpted form factor of Dactyl-style boards
    * 56x 1u keycaps
    * 10x 1.5u keycaps
    * 4x 2u keycaps
* A USB-C _(or USB Micro-B, depending on your microcontroller)_ to USB A cable to plug in your keyboard
* connection wires (and ideally some Dupont-style connectors for the microcontroller side of things, so you can swap the microcontroller if/when needed)


[SparkFun Pro Micro]: https://www.sparkfun.com/products/12640
[SparkFun Qwiic Pro Micro - USB-C]: https://www.sparkfun.com/products/15795
[Arduino Pro Mini]: https://store.arduino.cc/usa/arduino-pro-mini
[(see QMK documentation!)]: https://beta.docs.qmk.fm/using-qmk/hardware-features/feature_split_keyboard
[Black Pill]: https://github.com/WeActTC/MiniF4-STM32F4x1
[Blue Pill]: http://www.hiletgo.com/ProductDetail/2169541.html
[QMK Proton C]: https://qmk.fm/proton-c/
[PJRC Teensy]: https://www.pjrc.com/teensy/
[MX-style key switches]: https://mechanicalkeyboards.com/switches/index.php


### Wiring
A [very rough guide for the brave is here](guide/README.org#wiring) - It will be improved over time (**TODO**)!


## License

Copyright © 2015-2021 Matthew Adereth and David H. Bronke

The source code for generating the models (everything excluding the [things/](things/) and [resources/](resources/) directories) is distributed under the [GNU AFFERO GENERAL PUBLIC LICENSE Version 3](LICENSE).  The generated models and PCB designs are distributed under the [Creative Commons Attribution-ShareAlike License Version 4.0](LICENSE-models).
