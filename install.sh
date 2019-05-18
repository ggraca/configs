#!/bin/bash

CONFIG_PATH="/home/ggraca/Workspaces/configs"

#Bash
rm ~/.bashrc
ln -s $(echo $CONFIG_PATH/bash/.bashrc) ~/.bashrc

#Conky
rm ~/.config/conky
rm -r ~/.config/conky
ln -s $(echo $CONFIG_PATH/conky) ~/.config/conky

#I3
rm ~/.config/i3
rm -r ~/.config/i3
ln -s $(echo $CONFIG_PATH/i3) ~/.config/i3

#Openbox
rm ~/.config/openbox
rm -r ~/.config/openbox
ln -s $(echo $CONFIG_PATH/openbox) ~/.config/openbox

#Polybar
rm ~/.config/polybar
rm -r ~/.config/polybar
ln -s $(echo $CONFIG_PATH/polybar) ~/.config/polybar

#Rofi
rm ~/.config/rofi
rm -r ~/.config/rofi
ln -s $(echo $CONFIG_PATH/rofi) ~/.config/rofi

#Sublime
rm ~/.config/sublime-text-3/Packages/User
rm -r ~/.config/sublime-text-3/Packages/User
ln -s $(echo $CONFIG_PATH/sublime) ~/.config/sublime-text-3/Packages/User

#Tint2
rm ~/.config/tint2
rm -r ~/.config/tint2
ln -s $(echo $CONFIG_PATH/tint2) ~/.config/tint2

#Xorg
rm ~/.Xmodmap
ln -s $(echo $CONFIG_PATH/xorg/.Xmodmap) ~/.Xmodmap
rm ~/.Xresources
ln -s $(echo $CONFIG_PATH/xorg/.Xresources) ~/.Xresources
rm ~/.xinitrc
ln -s $(echo $CONFIG_PATH/xorg/.xinitrc) ~/.xinitrc

#Yabar
rm ~/.config/yabar
rm -r ~/.config/yabar
ln -s $(echo $CONFIG_PATH/yabar) ~/.config/yabar

#Zsh
rm ~/.oh-my-zsh
rm -r ~/.oh-my-zsh
# sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
rm ~/.zshrc
ln -s $(echo $CONFIG_PATH/zsh/.zshrc) ~/.zshrc
rm ~/.zprofile
ln -s $(echo $CONFIG_PATH/zsh/.zprofile) ~/.zprofile

#----------------------------------------------

#Scripts
rm ~/.scripts
rm -r ~/.scripts
ln -s $(echo $CONFIG_PATH/scripts) ~/.scripts