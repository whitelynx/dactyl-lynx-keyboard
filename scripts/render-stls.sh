#!/bin/sh

for model in things/dactyl-lynx-6x5-*.scad; do
	echo "$(tput setaf 3 bold)$model$(tput sgr0)"
	openscad --enable lazy-union --enable predictible-output --backend Manifold -o "things/$(basename "$model" .scad).stl" "$model"
done
