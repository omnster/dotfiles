#!/usr/bin/env bash
#
# LOG:
# 2023-02-01: added -0 flag to xargs to make it deal with quotes in author's names:
#             triggered by "o'connell"
# 2023-02-02: replaced "-0" with "-d '\n'": delimiter newline because -0 was fucking
#             up multiple file selection
# 2025-04-11: added -sort flag to rofi

PDFDIR=$1
ROFICONF=$HOME/.config/rofi/theme-wide.rasi
OOO=$HOME/bin/ooo

cd "$PDFDIR" || exit
find . -type f | rofi -sort -matching normal -p ">" -dmenu -i -theme "$ROFICONF" -multi-select | xargs -d '\n' -I{} "$OOO" {}
