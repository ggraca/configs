# NixOS + Hyprland 2024

![](/2024-nixos-hyprland/screenshot.png "Hyprland 2024 screenshot")

# General info

- Base system - NixOS + Hyprland
- Wallpaper - https://wallhaven.cc/w/o3epj5
- Taskbar - Waybar
- Menus - Wofi
- Login Manager - GDM
- Screen Lock - swaylock-effects

# Setup

## Base install
Install EndevourOS, selecting sway from the community versions during the instalation.


## Install additional packages
### System
```bash
# Default Shell
yay -S zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Core Apps
yay -S brave-bin sublime-text-4

# User Apps
yay -S spotify visual-studio-code-bin pcloud-drive steam goverlay nordvpn-bin
# yay -S libappindicator-gtk3 icu69
```

## Hyprland

```bash
yay -S hyprland hyprpaper hypridle hyprlock

# Run desktop entries (autostart)
yay -S dex

# Screenshot
yay -S grim slurp

# Bar, menus, notifications, screenshare context
yay -S rofi-wayland waybar otf-font-awesome mako xdg-desktop-portal-hyprland

# Audio and Music shortcuts
yay -S pamixer

# Display configuration
yay -S wdisplays

# Bluetooth (utils and GUI)
yay -S blueberry
sudo systemctl enable --now bluetooth.service
```


## Link configs
```bash
# Clone repo into folder
mkdir ~/ws
git clone https://github.com/ggraca/configs.git ~/ws/configs

# Link configs
cd ~/ws/configs/2024-nixos-hyprland
./install
```

## Tweaks

### VSCode
- Vscode won't detect the gnome keyring:
	- https://github.com/microsoft/vscode/issues/187338#issuecomment-1630300049

## Dev environments
```bash
yay -S rbenv ruby-build
rbenv install -l
rbenv install 3.3.0
rbenv global 3.3.0

yay -S nodenv nodenv-node-build nodenv-nvmrc
nodenv -l
nodenv install 20.11.1
nodenv global 20.11.1

yay -S postgresql
sudo su - postgres
initdb -D /var/lib/postgres/data
createuser --interactive
exit
sudo systemctl enable --now postgresql

yay -S redis
sudo systemctl enable --now redis
```

## TODO
- Specify Screenshot directory
- Enable Emojis in Chrome
- Unable to wake up from suspend (when connected to eGPU)
- Logout causes the system to suspend (when connected to eGPU)
- Unlock keyring at startup
- Use rofi instead of wofi for menus
