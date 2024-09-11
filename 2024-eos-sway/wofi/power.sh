#!/bin/bash

declare -A options=(
  ["Lock"]="~/.config/sway/scripts/lock.sh"
  ["Logout"]="swaymsg exit"
  ["Suspend"]="exec systemctl suspend"
  ["Reboot"]="exec systemctl reboot"
  # ["Reboot Windows"]="systemctl reboot --boot-loader-entry=auto-windows" # Doesn't work with grub
  ["Shutdown"]="exec systemctl poweroff -i"
)

selected=$(printf '%s\n' "${!options[@]}" | wofi --conf=$HOME/.config/wofi/config.power --style=$HOME/.config/wofi/style.widgets.css)

eval "${options[$selected]}"