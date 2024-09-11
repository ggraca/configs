pgrep "polybar" | while read -r pid ; do
    kill $pid
done

polybar main &
polybar second_monitor &
polybar secondary &
sleep 0.3
xdotool search --name "polybar-secondary_eDP-1" windowunmap
