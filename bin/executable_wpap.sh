#!/usr/bin/env zsh

MONITORS_NUM=$(xrandr | grep -c -w connected )

wpap_dir="${HOME}/Pictures/wallpapers"

# wpaps="$( find "$wpap_dir" -type f | sort -R | tail -n ${MONITORS_NUM} )"

# echo $wpaps
# echo ""

# setwpap() {
# 	feh --bg-fill $@
# }

# setwpap $wpaps

shuf -e -n${MONITORS_NUM} $wpap_dir/* | xargs feh --bg-fill
