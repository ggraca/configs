#!/bin/bash
 
declare -A options=(
  ["Area"]="/usr/share/sway/scripts/grimshot --notify save area"
  ["Window"]="/usr/share/sway/scripts/grimshot --notify save window"
  ["Active"]="/usr/share/sway/scripts/grimshot --notify save active"
  ["Screen"]="/usr/share/sway/scripts/grimshot --notify save screen"
  ["Output"]="/usr/share/sway/scripts/grimshot --notify save output"
)

selected=$(printf '%s\n' "${!options[@]}" | wofi --conf=$HOME/.config/wofi/config.screenshot --style=$HOME/.config/wofi/style.widgets.css)
 
eval "${options[$selected]}"