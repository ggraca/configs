#!/bin/sh
# This shell script is PUBLIC DOMAIN. You may do whatever you want with it.

TOGGLE=$HOME/.external_monitor

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
  	xrandr --newmode "1680x1050_60.00"  146.25  1680 1784 1960 2240  1050 1053 1059 1089 -hsync +vsync
	xrandr --addmode DP1 "1680x1050_60.00"
	xrandr --output eDP1 --pos 0x600 --output DP1 --mode 1680x1050_60.00 --rotate left --pos 1920x0
	feh --bg-scale ~/Pictures/Wallpapers/Primary.jpg --bg-scale ~/Pictures/Wallpapers/Secondary.jpg
else
    rm $TOGGLE
    xrandr --output DP1 --off
    feh --bg-scale ~/Pictures/Wallpapers/Primary.jpg
fi
