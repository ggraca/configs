#Openbox
rm ~/.config/openbox
rm -r ~/.config/openbox
ln -s $(echo $(pwd)/openbox) ~/.config/openbox

#Tint2
rm ~/.config/tint2
rm -r ~/.config/tint2
ln -s $(echo $(pwd)/tint2) ~/.config/tint2

#Conky
rm ~/.config/conky
rm -r ~/.config/conky
ln -s $(echo $(pwd)/conky) ~/.config/conky

#I3
rm ~/.config/i3
rm -r ~/.config/i3
ln -s $(echo $(pwd)/i3) ~/.config/i3

#Xorg
rm ~/.Xmodmap
ln -s $(echo $(pwd)/xorg/.Xmodmap) ~/.Xmodmap
rm ~/.xinitrc
ln -s $(echo $(pwd)/xorg/.xinitrc) ~/.xinitrc

#Bash
rm ~/.bashrc
ln -s $(echo $(pwd)/bash/.bashrc) ~/.bashrc