#!/bin/sh

# Top
xrandr --output DP1 --mode 1920x1080 --above eDP-1

# Left
#xrandr --output eDP-1 --pos 1680x0 --output DP1 --mode 1680x1050_60.00 --pos 0x30

# Right
#xrandr --output eDP-1 --pos 0x0 --output DP1 --mode 1680x1050_60.00 --pos 1920x30

# Right Rotated
#xrandr --output eDP-1 --pos 0x600 --output DP1 --mode 1680x1050_60.00 --rotate left --pos 1920x0

feh --bg-scale ~/Pictures/Wallpapers/Primary.jpg --bg-scale ~/Pictures/Wallpapers/Secondary.jpg