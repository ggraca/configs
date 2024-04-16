# Arch + Sway 2024

![](/2024-sway/screenshot.png "Sway 2024 screenshot")

# General info

- Base system - EndeavourOS (Gnome) + Sway
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

# System
yay -S sway swayidle swaylock-effects kanshi wofi waybar otf-font-awesome

# Default Browser
yay -S google-chrome

# Default Editor
yay -S sublime-text-4
```

### Utils
```bash
# Thunar (wastebin, mounting volumes, remote access, thumbnails)
yay -S gvfs tumbler

# Audio and Music shortcuts
yay -S pamixer

# Bluetooth (utils and GUI)
yay -S blueberry
sudo systemctl enable bluetooth.service
```

### Apps
```bash
yay -S spotify visual-studio-code-bin pcloud-drive
# yay -S libappindicator-gtk3 icu69
```

## Link configs
```bash
# Remove default configs
rm -rf ~/.config/sway ~/.config/waybar ~/.config/kanshi ~/.config/wofi ~/.zshrc

# Clone repo into folder
mkdir ~/ws
git clone https://github.com/ggraca/configs.git ~/ws/configs

# Link configs
ln -s ~/ws/configs/2024-sway/sway ~/.config/sway
ln -s ~/ws/configs/2024-sway/waybar ~/.config/waybar
ln -s ~/ws/configs/2024-sway/kanshi ~/.config/kanshi
ln -s ~/ws/configs/2024-sway/wofi ~/.config/wofi
ln -s ~/ws/configs/2024-sway/zsh/.zshrc ~/.zshrc
```

## Tweaks

### Bluetooth
- Allow Bluetooth during the Login Manager:
	- Uncomment `AutoEnable=true` from `/etc/bluetooth/main.conf`

- Fix dual-boot issues:
	- https://wiki.archlinux.org/title/bluetooth#Dual_boot_pairing


### eGPU
Wayland easily detects external GPUs and outputs. However, be default, it will continue to use the integrated card as the main one.

This goes unnoticed until an app explicitly ask for GPU resources (e.g. chrome-based apps). In this scenario, the processing will happen in the eGPU, then the result is sent to the integrated card which in turn is sent back to the eGPU for rendering (if the monitors are connected to the eGPU). This leads to some noticeable lag.

The way to fix this is by initialising sway/wayland specifying the eGPU as the main card. Hotplug will not work though, we need to logout and login again to change that config.

Fix:
- Create a new desktop entry in `/usr/share/wayland-sessions` (duplicate sway.desktop).
- Change the Exec line to `Exec=env WLR_DRM_DEVICES=/dev/dri/card1:/dev/dri/card0 sway`

A new entry should show as an option in the Login Manager. More info [here](https://www.reddit.com/r/framework/comments/sba273/guide_framework_laptop_running_amd_radeon_egpu/)

## Dev environments
```bash
yay -S rbenv ruby-build
rbenv install -l
rbenv install 3.3.0
rbenv global 3.3.0
```

## TODO
- Specify Screenshot directory
- Enable Emojis in Chrome
- Unable to wake up from suspend (when connected to eGPU)
- Logout causes the system to suspend (when connected to eGPU)
- Unlock keyring at startup
- Use rofi instead of wofi for menus
