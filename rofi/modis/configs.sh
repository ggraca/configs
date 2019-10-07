files() {
	find ~/Workspaces/configs \( \
		-path ~/Workspaces/configs/.git -o \
		-path ~/Workspaces/configs/screenshots -o \
		-path ~/Workspaces/configs/scripts/yanotify \) \
		-prune -o -type f -print
}

main() {
	option=$( files | rofi -dmenu -config ~/.config/rofi/notification )

	if [ "$option" ]; then
		subl3 -n "$option"
	fi
}

main