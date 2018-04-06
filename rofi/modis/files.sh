main() {
	option=$( (find ~/txt -print) | rofi -i -dmenu -i -config ~/.config/rofi/launcher )
	subl3 -n "$option"
}

main