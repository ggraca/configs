#!/bin/sh

# Config
xrandr --newmode "1680x1050_60.00"  146.25  1680 1784 1960 2240  1050 1053 1059 1089 -hsync +vsync
xrandr --addmode DP1 "1680x1050_60.00"

# Top
xrandr --output eDP-1 --pos 0x1050 --output DP1 --mode 1680x1050_60.00 --pos 120x0

# Left
#xrandr --output eDP-1 --pos 1680x0 --output DP1 --mode 1680x1050_60.00 --pos 0x30

# Right
#xrandr --output eDP-1 --pos 0x0 --output DP1 --mode 1680x1050_60.00 --pos 1920x30

# Right Rotated
#xrandr --output eDP-1 --pos 0x600 --output DP1 --mode 1680x1050_60.00 --rotate left --pos 1920x0

feh --bg-scale ~/Pictures/Wallpapers/Primary.jpg --bg-scale ~/Pictures/Wallpapers/Secondary.jpg