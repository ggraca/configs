VISIBLE=$(xdotool search --onlyvisible --name "polybar-secondary_eDP-1")

if [ "$VISIBLE" ]; then
	xdotool search --name "polybar-secondary_eDP-1" windowunmap
else
	xdotool search --name "polybar-secondary_eDP-1" windowmap
fi