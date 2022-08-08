Login Manager
- Use EOS Welcome prompt to select GDM
- sudo pacman -Rns sddm eos-sddm-theme

Utils
- sudo pacman -S gvfs tumbler # Thunar utils (wastebin, mounting volumes, remote access, thumbnails)
- Set chrome as default:
	- Remove BROWSER=firefox from /etc/environment
	- xdg-settings set default-web-browser google-chrome.desktop

Apps
- sublime-text-4
- google-chrome
- pcloud-drive
- spotify
- slack-desktop

Displays / eGPU
- Create a new desktop entry in /usr/share/wayland-sessions (duplicate sway.desktop). Change the Exec line to "Exec=env WLR_DRM_DEVICES=/dev/dri/card1 sway"
- https://www.reddit.com/r/framework/comments/sba273/guide_framework_laptop_running_amd_radeon_egpu/
- yay -S kanshi
- ln -s ~/Workspaces/configs/2022-sway/kanshi ~/.config/kanshi

Bluetooth
- sudo pacman -S --needed bluez bluez-utils
- sudo systemctl enable bluetooth.service

Sway config
- ln -s ~/Workspaces/configs/2022-sway/sway ~/.config/sway

Lock Screen
