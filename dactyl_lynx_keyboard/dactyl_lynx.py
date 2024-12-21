#!/usr/bin/env python3
import argparse
from os.path import abspath, dirname, join
from typing import List, Optional, Tuple

from solid2 import cube, sphere, text

from spkb.keyswitch import Keyswitch, MX, Choc
from spkb.keycaps import sa_cap
from spkb.single_key_pcb import single_key_board
from spkb.types import HoleDef, Offset2D
from spkb.utils import nothing

from .layouts.layout import Layout
from .lcd_mount import LCDMount
from .assembly import KeyboardAssembly


# matrix_coords[left_side][thumb][column][row]
matrix_coords = {
    False: {  # right side
        False: [  # finger well (column-major, which means that this looks sideways in the code)
            ['0,0', '0,1', '0,2', '0,3'],
            ['1,0', '1,1', '1,2', '1,3', '1,4'],
            ['2,0', '2,1', '2,2', '2,3', '2,4'],
            ['3,0', '3,1', '3,2', '3,3', '3,4'],
            ['4,0', '4,1', '4,2', '4,3', '4,4'],
            ['5,0', '5,1', '5,2', '5,3', '5,4'],
        ],
        True: {  # thumb well
            2: { -1: '0,5', 0: '1,5', 1: '2,5' },
            1: { -1: '3,5', 0: '4,5', 1: '5,5' },
            0: { -1: '0,6', 0.5: '1,6' },
        },
    },
    True: {  # left side
        False: [  # finger well (column-major, which means that this looks sideways in the code)
            ['5,0', '5,1', '5,2', '5,3'],
            ['4,0', '4,1', '4,2', '4,3', '5,4'],
            ['3,0', '3,1', '3,2', '3,3', '4,4'],
            ['2,0', '2,1', '2,2', '2,3', '3,4'],
            ['1,0', '1,1', '1,2', '1,3', '2,4'],
            ['0,0', '0,1', '0,2', '0,3', '1,4'],
        ],
        True: {  # thumb well
            2: { 1: '0,5', 0: '1,5', -1: '2,5' },
            1: { 1: '3,5', 0: '4,5', -1: '5,5' },
            0: { 0.5: '0,6', -1: '1,6' },
        },
    },
}


command_legend = '⌘'
delete_legend = '⌦'
backspace_legend = '⌫'
shift_legend = '⇧'
enter_legend = '⏎'
tab_legend = '⇥'
esc_legend = '␛'

# lynx_layout[left_side][thumb][column][row]
lynx_layout = {
    False: {  # right side
        False: [  # finger well (column-major, which means that this looks sideways in the code)
            ['6', 'F', 'D', 'B'],
            ['7', 'G', 'H', 'M', '←'],
            ['8', 'C', 'T', 'W', '↓'],
            ['9', 'R', 'N', 'V', '↑'],
            ['0', 'L', 'S', 'Z', '→'],
            ['\\', '/', '-', shift_legend, command_legend],
        ],
        True: {  # thumb well
            2: { -1: command_legend, 0: 'Alt', 1: 'Ctrl' },
            1: { -1: 'Fn', 0: enter_legend, 1: shift_legend },
            0: { -1: 'NOP', 0.5: '' },
        },
    },
    True: {  # left side
        False: [  # finger well (column-major, which means that this looks sideways in the code)
            ['5', 'Y', 'I', 'X'],
            ['4', 'P', 'U', 'K', ']'],
            ['3', '.', 'E', 'J', '['],
            ['2', ',', 'O', 'Q', '='],
            ['1', '\'', 'A', ';', '`'],
            ['Menu', tab_legend, esc_legend, shift_legend, 'Ctrl'],
        ],
        True: {  # thumb well
            2: { 1: 'Ctrl', 0: 'Alt', -1: command_legend },
            1: { 1: shift_legend, 0: delete_legend, -1: 'Fn' },
            0: { 0.5: backspace_legend, -1: 'NOP' },
        },
    },
}


if __name__ == "__main__":
    # Dimensions of single-key PCB
    board_dimensions = Offset2D(19.15, 19.15)

    # Screw positions for single-key PCB
    board_screw_positions: List[HoleDef] = [
        HoleDef(8, 8, 0.5),
        HoleDef(-8, 8, 0.5),
        HoleDef(8, -8, 0.5),
        HoleDef(-8, -8, 0.5),
    ]

    #keyswitch_type: Keyswitch = MX()
    keyswitch_type: Keyswitch = MX.with_board(board_dimensions, *board_screw_positions)
    #keyswitch_type: Keyswitch = Choc()
    #keyswitch_type: Keyswitch = Choc.with_board(board_dimensions, *board_screw_positions)

    # The wall_thickness of the board mount socket (2.625)
    wall_thickness: float = 2.625

    def tagged_switch_plate(column, row):
        return (
            keyswitch_type.plate()
            + text(f'{column},{row}', size=keyswitch_type.keyswitch_length / 3, halign='center', valign='center')
        )

    assembly = KeyboardAssembly(
        columns=6,
        rows=5,
        use_1_5u_keys=False,
        use_color=False,
        keyswitch=keyswitch_type,

        # The default, if `socket_shape` is omitted: Basic sockets without a backplate; also use this if using
        # single-key PCBs.
        #socket_shape=lambda column, row: keyswitch_type.plate(),

        # Sockets with a backplate supporting a hotswap socket, 5-pin switches, and a 2-pin or 4-pin LED.
        #socket_shape=lambda column, row: keyswitch_type.plate_with_backplate(),

        # To use a switch plate with engraved layout positions (for troubleshooting):
        #socket_shape=tagged_switch_plate,
    )

    combined_colors = {
        'combined': (0.03, 0.03, 0.03),
        #'combined': (0.33, 0.33, 0.33),
        'finger_part': (0.1, 0.1, 0.9),
        'thumb_part': (0.1, 0.1, 0.1),
        'connector': (0.4, 0.1, 0.1),
        'keycaps': (1.0, 0.98, 0.95),
        'keycap_text': (0, 0, 0),
        'keyswitches': (0.02, 0.02, 0.02),
        'pcbs': (0.02, 0.02, 0.02),
        #'pcbs': (0.02, 0.5, 0.02),
        'bottom': (0.027, 0.027, 0.027),
        'lcd_mount': (0.1, 0.3, 0.1),
    }
    combined_parts = ('trackpoint', 'keycaps', 'keyswitches', 'pcbs', 'bottom_with_feet_and_tripod_mount')

    # Choose your keycap legends!
    # No keycap legends
    #keycap_text = None
    # The coordinates of each key in the layout math
    #keycap_text = lambda column, row, **kwargs: f'{column},{row}'
    # The wiring matrix coordinates for each key
    #keycap_text = lambda left_side, thumb, column, row, **kwargs: matrix_coords[left_side][thumb][column][row]
    # The key mapping at each position in my `lynx` layout
    keycap_text = lambda left_side, thumb, column, row, **kwargs: lynx_layout[left_side][thumb][column][row]

    lcdMount = LCDMount()

    pcb_board = single_key_board()

    keyswitch = lambda column, row: keyswitch_type.switch()

    def switch_cap(thumb):
        def _switch_cap_inner(column, row):
            shape = sa_cap(1)
            if (column == 1 and row == 0) if thumb else (row == 2 and 1 <= column <= 4):
                shape -= sphere(_fn=50, r=30).up(48)
            elif isinstance(row, float) and not row.is_integer():
                shape = sa_cap(2)
            elif isinstance(column, float) and not column.is_integer():
                shape = sa_cap(2).rotate((0, 0, 90))

            shape = shape.color(combined_colors['keycaps'])

            if keycap_text is not None:
                rendered_keycap_text = keycap_text(column=column, row=row, thumb=thumb, left_side=assembly.left_side)
                if rendered_keycap_text:
                    key_text = (
                        text(
                            rendered_keycap_text,
                            size=(
                                keyswitch_type.keyswitch_length / 6
                                if len(rendered_keycap_text) > 1
                                else keyswitch_type.keyswitch_length / 3
                            ),
                            halign='center',
                            valign='center',
                            font='FiraCode Nerd Font Propo',
                            #font='Segoe UI Symbol',
                        )
                        .linear_extrude(30)
                        .up(10)
                        .color(combined_colors['keycap_text'])
                    )
                    if assembly.left_side:
                        key_text = key_text.mirror((1, 0, 0))
                    if thumb:
                        key_text = key_text.rotate((0, 0, -90))
                    shape -= key_text
            return shape
        return _switch_cap_inner

    right_finger_part = assembly.finger_part()
    right_bottom = assembly.finger_bottom_cover()
    right_bottom_with_feet = (
        right_bottom
        + assembly.finger_bottom_cover_feet()
    )
    right_bottom_with_nuts = (
        right_bottom
        + assembly.finger_bottom_cover_nuts()
    )
    right_bottom_with_tripod_mount = assembly.finger_bottom_cover_with_tripod_mount()
    right_bottom_with_feet_and_tripod_mount = (
        right_bottom_with_tripod_mount
        + assembly.finger_bottom_cover_feet()
    )
    right_thumb_part = assembly.thumb_part()
    right_connector = assembly.connector()
    right_keycaps = (
        assembly.finger_layout.place_all(switch_cap(thumb=False))
        + assembly.thumb_layout.place_all(switch_cap(thumb=True))
    )
    right_keyswitches = (
        assembly.finger_layout.place_all(keyswitch)
        + assembly.thumb_layout.place_all(keyswitch)
    )
    right_pcbs = (
        assembly.finger_layout.place_all(pcb_board)
        + assembly.thumb_layout.place_all(pcb_board)
    )
    right_single_piece = assembly.single_piece()

    # TODO: We probably shouldn't need to explicitly call .mirror((1, 0, 0)) here...
    # Maybe wrap the assembly methods to automatically do this?
    assembly.left_side = True
    left_finger_part = assembly.finger_part().mirror((1, 0, 0))
    left_bottom = assembly.finger_bottom_cover().mirror((1, 0, 0))
    left_bottom_with_feet = (
        left_bottom
        + assembly.finger_bottom_cover_feet().mirror((1, 0, 0))
    )
    left_bottom_with_nuts = (
        left_bottom
        + assembly.finger_bottom_cover_nuts().mirror((1, 0, 0))
    )
    left_bottom_with_tripod_mount = assembly.finger_bottom_cover_with_tripod_mount().mirror((1, 0, 0))
    left_bottom_with_feet_and_tripod_mount = (
        left_bottom_with_tripod_mount
        + assembly.finger_bottom_cover_feet().mirror((1, 0, 0))
    )
    left_thumb_part = assembly.thumb_part().mirror((1, 0, 0))
    left_connector = assembly.connector().mirror((1, 0, 0))
    left_keycaps = (
        assembly.finger_layout.place_all(switch_cap(thumb=False))
        + assembly.thumb_layout.place_all(switch_cap(thumb=True))
    ).mirror((1, 0, 0))
    left_keyswitches = (
        assembly.finger_layout.place_all(keyswitch)
        + assembly.thumb_layout.place_all(keyswitch)
    ).mirror((1, 0, 0))
    left_pcbs = (
        assembly.finger_layout.place_all(pcb_board)
        + assembly.thumb_layout.place_all(pcb_board)
    ).mirror((1, 0, 0))
    left_single_piece = assembly.single_piece().mirror((1, 0, 0))

    assembled_lcd_mount = (
        lcdMount.frame()
        + lcdMount.mount(
            assembly.transform_finger_nut3(
                cube((10, 0.1, 9), center=True)
                .translate((0, 5, -10))
            )
            .mirror((1, 0, 0))
            .translate((-100, 0, 0))
        )
        + assembly.transform_finger_nut3(
            assembly.tenting_nut_unthreaded.down(10)
        )
        .mirror((1, 0, 0))
        .translate((-100, 0, 0))
    )

    def build_combined_output(separate_pieces=False, parts=()):
        """Build a combined "assembly" view of the keyboard, with the given parts.

        :param separate_pieces: whether the main body should consist of separate finger and thumb pieces with a connector
        :type columns: bool

        :param parts: the parts to include in the assembly (choices: 'trackpoint', 'keycaps', 'keyswitches', 'pcbs',
        'bottom', 'bottom_with_feet', 'bottom_with_nuts', 'bottom_with_tripod_mount',
        'bottom_with_feet_and_tripod_mount', 'lcd_mount')
        :type parts: list[str]
        """
        right_combined = right_single_piece.color(combined_colors['combined'])
        if separate_pieces:
            right_combined = (
                right_finger_part.color(combined_colors['finger_part'])
                + right_thumb_part.color(combined_colors['thumb_part'])
                + right_connector.color(combined_colors['connector'])
            )
        if 'trackpoint' in parts:
            right_combined += assembly.transform_trackpoint_mount(assembly.trackpoint_mount.trackpoint_shape())
        if 'keycaps' in parts:
            right_combined += right_keycaps
        if 'keyswitches' in parts:
            right_combined += right_keyswitches.color(combined_colors['keyswitches'])
        if 'pcbs' in parts:
            right_combined += right_pcbs.color(combined_colors['pcbs'])

        if 'bottom' in parts:
            right_combined += right_bottom.color(combined_colors['bottom']).down(0.01)
        elif 'bottom_with_feet' in parts:
            right_combined += right_bottom_with_feet.color(combined_colors['bottom']).down(0.01)
        elif 'bottom_with_nuts' in parts:
            right_combined += right_bottom_with_nuts.color(combined_colors['bottom']).down(0.01)
        elif 'bottom_with_tripod_mount' in parts:
            right_combined += right_bottom_with_tripod_mount.color(combined_colors['bottom']).down(0.01)
        elif 'bottom_with_feet_and_tripod_mount' in parts:
            right_combined += right_bottom_with_feet_and_tripod_mount.color(combined_colors['bottom']).down(0.01)

        combined = right_combined.right(100)

        left_combined = left_single_piece.color(combined_colors['combined'])
        if separate_pieces:
            left_combined = (
                left_finger_part.color(combined_colors['finger_part'])
                + left_thumb_part.color(combined_colors['thumb_part'])
                + left_connector.color(combined_colors['connector'])
            )
        if 'keycaps' in parts:
            left_combined += left_keycaps
        if 'keyswitches' in parts:
            left_combined += left_keyswitches.color(combined_colors['keyswitches'])
        if 'pcbs' in parts:
            left_combined += left_pcbs.color(combined_colors['pcbs'])

        if 'bottom' in parts:
            left_combined += left_bottom.color(combined_colors['bottom']).down(0.01)
        elif 'bottom_with_feet' in parts:
            left_combined += left_bottom_with_feet.color(combined_colors['bottom']).down(0.01)
        elif 'bottom_with_nuts' in parts:
            left_combined += left_bottom_with_nuts.color(combined_colors['bottom']).down(0.01)
        elif 'bottom_with_tripod_mount' in parts:
            left_combined += left_bottom_with_tripod_mount.color(combined_colors['bottom']).down(0.01)
        elif 'bottom_with_feet_and_tripod_mount' in parts:
            left_combined += left_bottom_with_feet_and_tripod_mount.color(combined_colors['bottom']).down(0.01)

        combined += left_combined.left(100)

        if 'lcd_mount' in parts:
            combined += assembled_lcd_mount.color(combined_colors['lcd_mount'])

        return combined

    def output_filepath(suffix: Optional[str] = None):
        """Return an absolute path to an output file in the `things/` directory.

        :param suffix: an optional suffix to append to the filename
        """
        prefix = f"dactyl-lynx-{assembly.finger_layout.columns}x{assembly.finger_layout.rows}"

        filename = f"{prefix}.scad"
        if suffix:
            filename = f"{prefix}-{suffix}.scad"

        return abspath(join(dirname(dirname(__file__)), "things", filename))

    right_finger_filepath = output_filepath("right-finger")
    print(f"Writing right finger output to {right_finger_filepath} . . .")
    right_finger_part.save_as_scad(right_finger_filepath)

    right_thumb_filepath = output_filepath("right-thumb")
    print(f"Writing right thumb output to {right_thumb_filepath} . . .")
    right_thumb_part.save_as_scad(right_thumb_filepath)

    right_connector_filepath = output_filepath("right-connector")
    print(f"Writing right connector output to {right_connector_filepath} . . .")
    right_connector.save_as_scad(right_connector_filepath)

    right_single_piece_filepath = output_filepath("right-single-piece")
    print(f"Writing right single_piece output to {right_single_piece_filepath} . . .")
    right_single_piece.save_as_scad(right_single_piece_filepath)

    right_bottom_filepath = output_filepath("right-bottom")
    print(f"Writing right bottom output to {right_bottom_filepath} . . .")
    right_bottom.save_as_scad(right_bottom_filepath)

    right_bottom_with_feet_filepath = output_filepath("right-bottom-with-feet")
    print(f"Writing right bottom_with_feet output to {right_bottom_with_feet_filepath} . . .")
    right_bottom_with_feet.save_as_scad(right_bottom_with_feet_filepath)

    right_bottom_with_nuts_filepath = output_filepath("right-bottom-with-nuts")
    print(f"Writing right bottom_with_nuts output to {right_bottom_with_nuts_filepath} . . .")
    right_bottom_with_nuts.save_as_scad(right_bottom_with_nuts_filepath)

    right_bottom_with_tripod_mount_filepath = output_filepath("right-bottom-with-tripod-mount")
    print(f"Writing right bottom_with_tripod_mount output to {right_bottom_with_tripod_mount_filepath} . . .")
    right_bottom_with_tripod_mount.save_as_scad(right_bottom_with_tripod_mount_filepath)

    right_bottom_with_feet_and_tripod_mount_filepath = output_filepath("right-bottom-with-feet-tripod")
    print(f"Writing right bottom_with_feet_and_tripod_mount output to {right_bottom_with_feet_and_tripod_mount_filepath} . . .")
    right_bottom_with_feet_and_tripod_mount.save_as_scad(right_bottom_with_feet_and_tripod_mount_filepath)

    left_finger_filepath = output_filepath("left-finger")
    print(f"Writing left finger output to {left_finger_filepath} . . .")
    left_finger_part.save_as_scad(left_finger_filepath)

    left_thumb_filepath = output_filepath("left-thumb")
    print(f"Writing left thumb output to {left_thumb_filepath} . . .")
    left_thumb_part.save_as_scad(left_thumb_filepath)

    left_connector_filepath = output_filepath("left-connector")
    print(f"Writing left connector output to {left_connector_filepath} . . .")
    left_connector.save_as_scad(left_connector_filepath)

    left_single_piece_filepath = output_filepath("left-single-piece")
    print(f"Writing left single_piece output to {left_single_piece_filepath} . . .")
    left_single_piece.save_as_scad(left_single_piece_filepath)

    left_bottom_filepath = output_filepath("left-bottom")
    print(f"Writing left bottom output to {left_bottom_filepath} . . .")
    left_bottom.save_as_scad(left_bottom_filepath)

    left_bottom_with_feet_filepath = output_filepath("left-bottom-with-feet")
    print(f"Writing left bottom_with_feet output to {left_bottom_with_feet_filepath} . . .")
    left_bottom_with_feet.save_as_scad(left_bottom_with_feet_filepath)

    left_bottom_with_nuts_filepath = output_filepath("left-bottom-with-nuts")
    print(f"Writing left bottom_with_nuts output to {left_bottom_with_nuts_filepath} . . .")
    left_bottom_with_nuts.save_as_scad(left_bottom_with_nuts_filepath)

    left_bottom_with_tripod_mount_filepath = output_filepath("left-bottom-with-tripod-mount")
    print(f"Writing left bottom_with_tripod_mount output to {left_bottom_with_tripod_mount_filepath} . . .")
    left_bottom_with_tripod_mount.save_as_scad(left_bottom_with_tripod_mount_filepath)

    left_bottom_with_feet_and_tripod_mount_filepath = output_filepath("left-bottom-with-feet-tripod")
    print(f"Writing left bottom_with_feet_and_tripod_mount output to {left_bottom_with_feet_and_tripod_mount_filepath} . . .")
    left_bottom_with_feet_and_tripod_mount.save_as_scad(left_bottom_with_feet_and_tripod_mount_filepath)

    lcd_mount_filepath = output_filepath("left-lcd-mount")
    print(f"Writing LCD mount output to {lcd_mount_filepath} . . .")
    assembled_lcd_mount.save_as_scad(lcd_mount_filepath)

    combined_filepath = output_filepath()
    print(f"Writing combined output to {combined_filepath} . . .")
    build_combined_output(
        separate_pieces=False,
        parts=combined_parts,
    ).save_as_scad(combined_filepath)

    import sys
    sys.exit(0)
#######

    parser = argparse.ArgumentParser(description="Build a Dactyl Lynx keyboard model.")
    parser.add_argument(
        "finger_columns",
        metavar="COLS",
        type=int,
        default=6,
        nargs="?",
        help="the number of columns in the finger well",
    )
    parser.add_argument(
        "finger_rows",
        metavar="ROWS",
        type=int,
        default=5,
        nargs="?",
        help="the number of rows in the finger well",
    )
    parser.add_argument(
        "--with-keycaps",
        action="store_true",
        default=False,
        dest="show_keycaps",
        help="render keycaps (default: don't render keycaps)",
    )
    parser.add_argument(
        "--without-keycaps",
        action="store_false",
        dest="show_keycaps",
        help="don't render keycaps",
    )
    parser.add_argument(
        "--with-sockets",
        action="store_true",
        default=True,
        dest="show_sockets",
        help="render keyswitch sockets",
    )
    parser.add_argument(
        "--without-sockets",
        action="store_false",
        dest="show_sockets",
        help="don't render keyswitch sockets (default: render sockets)",
    )
    parser.add_argument(
        "-o",
        "--output",
        metavar="FILE",
        type=str,
        default=None,
        help="the name of the file to write to",
    )

    args = parser.parse_args()

    def build_filepath():
        return join(
            dirname(dirname(dirname(abspath(__file__)))),
            "things",
            args.output
            or f"dactyl-lynx-{args.finger_columns}x{args.finger_rows}.scad",
        )

    filepath = build_filepath()

    print(f"Building board with {args.finger_columns}x{args.finger_rows} "
          "finger wells . . .")

    layout = Layout(
        finger_columns=args.finger_columns,
        finger_rows=args.finger_rows,
    )

    print(f"Writing output to {filepath} . . .")
    (
        (
            layout.finger_caps()
            + layout.thumb_caps()
            if args.show_keycaps else nothing
        )
        + (
            layout.finger_place_all(keyswitch_type.plate_with_backplate())
            + layout.thumb_place_all(keyswitch_type.plate_with_backplate())
            if args.show_sockets else nothing
        )
    ).save_as_scad(filepath)
