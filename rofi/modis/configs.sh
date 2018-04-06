main() {
	option=$( (find ~/Workspaces/configs -print) | rofi -dmenu -config ~/.config/rofi/notification )
	subl3 -n "$option"
}

main