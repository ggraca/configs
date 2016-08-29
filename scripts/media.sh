ps cax | grep QMPlay2 > /dev/null
if [ $? -eq 0 ]; then
	if [ "$1" == "play-pause" ]; then
		QMPlay2 -toggle
	elif [ "$1" == "previous" ]; then
		QMPlay2 -prev
	else
		QMPlay2 -next
	fi
else
	playerctl $1
fi