main() {
	option=$( (find ~/Workspaces/configs/scripts/workspaces -name "*.sh" -print) | rofi -dmenu -config ~/.config/rofi/notification )
	bash "$option"
}

main