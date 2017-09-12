OPTIONS="slock,pkill polybar,pkill x,systemctl suspend,systemctl reboot,systemctl poweroff"

R=$(echo $OPTIONS | tr ',' '\n' | rofi -dmenu -config ~/.config/rofi/notification)
$R
