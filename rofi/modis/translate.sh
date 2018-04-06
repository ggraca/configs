TRANSLATION_PARAMS=' -show-dictionary n -show-original n -show-languages n -show-translation n -show-dictionary n -show-prompt-message n -indent 0 -no-ansi'

results=()

gen_list() {
	for i in "${results[@]}"
  do
		echo -e "${i}" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//'
	done	
}

main() {
	query=$( (echo ) | rofi -dmenu -config ~/.config/rofi/launcher )
	results=$( trans $query $TRANSLATION_PARAMS )
	IFS=$'\n' results=(${results});
	IFS=$',' results=(${results[-1]});

	option=$( (gen_list) | rofi -dmenu -config ~/.config/rofi/launcher )
	echo $option | xclip -selection clipboard -r
}

main