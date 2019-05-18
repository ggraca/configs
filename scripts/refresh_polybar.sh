pgrep "polybar" | while read -r pid ; do
    kill $pid
done

polybar main &
# polybar tray &
# polybar secondary &