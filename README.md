# The Dactyl Lynx Keyboard
The Dactyl Lynx is a parameterized, split-hand, concave, columnar, ergonomic keyboard.

This is my fork of [the original Dactyl][]. I've changed a few things:
* Rotated thumb clusters to be close to vertical (inspired by [the Dactyl-ManuForm][] and the way my thumbs move)
* Steeper tenting angle
* Ergodox-compatible keycaps! (it doesn't use _all_ of the Ergodox keys, but the keys it has should all be able to be sourced from [Ergodox keycap sets][] - effectively the same as [the Phat Dactyl][])
* A simpler one-piece chassis

[the original Dactyl]: https://github.com/adereth/dactyl-keyboard
[the Dactyl-ManuForm]: https://github.com/tshort/dactyl-keyboard
[Ergodox keycap sets]: https://www.reddit.com/r/ergodox/comments/gu4cbm/every_site_for_ergodox_keycaps_that_are_currently/
[the Phat Dactyl]: https://github.com/adereth/dactyl-keyboard/pull/48

![Preview render](https://raw.githubusercontent.com/whitelynx/dactyl-keyboard/master/resources/preview.png)


## Future plans
* Modifying keyswitch holes to support Kailh hot-swap sockets
* Adding a [TrackPoint module][] between the `D`, `H`, `B`, and `M` keys (`H`, `J`, `N`, and `M` on QWERTY)
* Adding mouse buttons and a scroll wheel next to the right-hand thumb cluster

[TrackPoint module]: https://github.com/alonswartz/trackpoint


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


### Wiring
A [very rough guide for the brave is here](guide/README.org#wiring) - It will be improved over time (**TODO**)!


## License

Copyright © 2015-2020 Matthew Adereth and David H. Bronke

The source code for generating the models (everything excluding the [things/](things/) and [resources/](resources/) directories) is distributed under the [GNU AFFERO GENERAL PUBLIC LICENSE Version 3](LICENSE).  The generated models and PCB designs are distributed under the [Creative Commons Attribution-ShareAlike License Version 4.0](LICENSE-models).
