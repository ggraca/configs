declare -A OPTIONS

OPTIONS=(
	["Lock"]="slock"
	["Suspend"]="systemctl suspend"
	["Reboot"]="systemctl reboot"
	["Shutdown"]="systemctl poweroff"
	["Restart Polybar"]="pkill polybar"
	["Restart X11"]="pkill x"
)

gen_list() {
	for i in "${!OPTIONS[@]}"
  do
		echo "$i"
	done	
}

main() {
	option=$( (gen_list) | rofi -dmenu -config ~/.config/rofi/notification )
	${OPTIONS[$option]}
}

main