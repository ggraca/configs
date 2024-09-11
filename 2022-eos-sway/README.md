# Arch + Sway 2022

![](/2022-sway/screenshot.png "Sway 2022 screenshot")

# General info

- Base system - EndeavourOS/Arch with Sway (community edition)
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
chsh -s /bin/zsh

# Default Browser
yay -S google-chrome

# Default Editor
yay -S sublime-text-4

# Automatic screen configuration
sudo pacman -S kanshi

# Blurred lockscreen
yay -S swaylock-effects
```

### Utils
```bash
# Thunar (wastebin, mounting volumes, remote access, thumbnails)
sudo pacman -S gvfs tumbler

# Bluetooth (utils and GUI)
sudo pacman -S bluez bluez-utils blueberry
sudo systemctl enable bluetooth.service

# Audio and Music shortcuts
sudo pacman -S pamixer playerctl
```

### Apps
```bash
yay -S spotify slack-desktop visual-studio-code-bin pcloud-drive
```

## Link configs
```bash
# Remove default configs
rm -rf ~/.config/sway ~/.config/waybar ~/.config/kanshi ~/.config/wofi ~/.zshrc

# Clone repo into folder
mkdir ~/Workspaces
git clone https://github.com/ggraca/configs.git ~/Workspaces/configs

# Link configs
ln -s ~/Workspaces/configs/2022-sway/sway ~/.config/sway
ln -s ~/Workspaces/configs/2022-sway/waybar ~/.config/waybar
ln -s ~/Workspaces/configs/2022-sway/kanshi ~/.config/kanshi
ln -s ~/Workspaces/configs/2022-sway/wofi ~/.config/wofi
ln -s ~/Workspaces/configs/2022-sway/zsh/.zshrc ~/.zshrc
```

## Tweaks

### Change Login Manager
- Use EOS Welcome prompt to select GDM.
- Remove default Login Manager:
	```bash
	sudo pacman -Rns sddm eos-sddm-theme`
	```

### Change Browser
- Remove `BROWSER=firefox` from `/etc/environment`
- Set chrome as default the xdg default:
	```bash
	xdg-settings set default-web-browser google-chrome.desktop
	```

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

## TODO
- Specify Screenshot directory
- Enable Emojis in Chrome
- Unable to wake up from suspend (when connected to eGPU)
- Logout causes the system to suspend (when connected to eGPU)
- Unlock keyring at startup
- Use rofi instead of wofi for menus
