declare -A OPTIONS

DATE=$(date +"%Y-%h-%d %H-%M-%S")
FILENAME="~/Pictures/Screenshots/\"$DATE.png\""
CLIPBOARD_COMMAND='xclip -selection clipboard -t image/png'
STDOUT_OPTION='--format png /dev/stdout'

OPTIONS=(
	["Print"]="maim $FILENAME"
	["Print Selection"]="maim -s $FILENAME"
	["Print and Copy"]="maim $FILENAME | $CLIPBOARD_COMMAND"
	["Print Selection and Copy"]="maim -s $FILENAME | $CLIPBOARD_COMMAND"	
)

gen_list() {
	for i in "${!OPTIONS[@]}"
  do
		echo "$i"
	done	
}

main() {
	option=$( (gen_list) | rofi -dmenu -config ~/.config/rofi/notification )
	eval "${OPTIONS[$option]}"
}

main
