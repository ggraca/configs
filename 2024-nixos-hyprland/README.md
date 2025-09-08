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

# Bar, menus, notifications, screenshare context, appearance
yay -S rofi-wayland waybar otf-font-awesome mako xdg-desktop-portal-hyprland nwg-look htop nvtop

# Audio and Music shortcuts
yay -S pamixer

# Wayland helpers
yay -S wdisplays ydotool

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
yay -S mise usage
mise settings add idiomatic_version_file_enable_tools ruby
mise use ruby@3.4.3
mise settings add idiomatic_version_file_enable_tools node
mise settings add idiomatic_version_file_enable_tools yarn
mise use node@20.11.1


yay -S docker postgresql

docker run -d --name pg17 -v pg17data:/var/lib/postgresql/data -v /var/run/postgresql:/var/run/postgresql -e POSTGRES_HOST_AUTH_METHOD=trust -p5432:5432 postgres:17
docker start pg17

docker run -d --name redis -v redisdata:/data -p6379:6379 redis:latest
docker start redis
```

## TODO
- Specify Screenshot directory
- Enable Emojis in Chrome
- Unable to wake up from suspend (when connected to eGPU)
- Logout causes the system to suspend (when connected to eGPU)
- Unlock keyring at startup
- Use rofi instead of wofi for menus
