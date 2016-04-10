rm ~/.config/openbox
rm -r ~/.config/openbox
ln -s $(echo $(pwd)/openbox) ~/.config/openbox

rm ~/.config/tint2
rm -r ~/.config/tint2
ln -s $(echo $(pwd)/tint2) ~/.config/tint2

rm ~/.config/conky
rm -r ~/.config/conky
ln -s $(echo $(pwd)/conky) ~/.config/conky

rm ~/.config/i3
rm -r ~/.config/i3
ln -s $(echo $(pwd)/i3) ~/.config/i3
