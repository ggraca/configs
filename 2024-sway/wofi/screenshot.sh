#!/bin/bash
 
declare -A options=(
  ["Area"]="grimshot --notify save area"
  ["Window"]="grimshot --notify save window"
  ["Active"]="grimshot --notify save active"
  ["Screen"]="grimshot --notify save screen"
  ["Output"]="grimshot --notify save output"
)

selected=$(printf '%s\n' "${!options[@]}" | wofi --conf=$HOME/.config/wofi/config.screenshot --style=$HOME/.config/wofi/style.widgets.css)
 
eval "${options[$selected]}"