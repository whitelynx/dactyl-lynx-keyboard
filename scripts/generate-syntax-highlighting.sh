#!/bin/sh

THEME=lightbulb
{
	cat - <<-EOF
	/* Generated with \`pygmentize -f html -S $THEME\`
	 * Licensed under the BSD 2-Clause "Simplified" License (https://github.com/pygments/pygments/blob/master/LICENSE)
	 */
	EOF
	pygmentize -f html -S $THEME
} > templates/syntax-highlighting.css
