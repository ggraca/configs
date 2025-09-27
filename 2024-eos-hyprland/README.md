# EndeavourOS + Hyprland 2024

![](/2024-eos-hyprland/screenshot.png "Hyprland 2024 screenshot")

# General info

- Base system - EndeavourOS + Hyprland
- Wallpaper - https://wallhaven.cc/w/g8y12l
- Taskbar - Waybar
- Menus - Rofi
- Session Manager - greetd + uwsm
- Screen Lock - hyprlock

# Setup

## Minimal interface
```bash
yay -S zsh kitty hyprland rofi

mkdir ~/ws
git clone https://github.com/ggraca/configs ~/ws/configs # Change to ssh later
cd ~/ws/configs/2024-eos-hyprland
./install
```

## Session Manager
```bash
yay -S greetd greetd-regreet uwsm gnome-keyring seahorse
sudo systemctl enable greetd
```

Modify `/etc/greetd/config.toml` to include:
```
[default_session]
command = "Hyprland --config /etc/greetd/hyprland.conf"
```

Create `/etc/greetd/hyprland.conf` file with:
```
env = GTK_THEME,Nordic

exec-once = regreet; hyprctl dispatch exit
misc {
    disable_hyprland_logo = true
    disable_splash_rendering = true
    disable_hyprland_qtutils_check = true
}
```

Modify `/etc/pam.d/greetd` to include:
```
auth       optional     pam_gnome_keyring.so
session    optional     pam_gnome_keyring.so auto_start
```

## Remaining OS setup
```bash
# System
yay -S hyprpaper hypridle hyprlock xdg-desktop-portal-hyprland waybar mako dex network-manager-applet

# Themes
yay -S nwg-look nordic-theme oh-my-zsh-git papirus-icon-theme ttf-nerd-fonts-symbols

# File manager
yay -S thunar gvfs tumbler thunar-archive-plugin thunar-volman mpv

# Screenshot, Audio and Music shortcuts, Bluetooth Utils and GUI
yay -S grim slurp pamixer blueberry
sudo systemctl enable --now bluetooth.service

# System monitors/helpers
yay -S ydotool htop nvtop lazydocker
```

## Applications
```bash
# Apps
yay -S brave-bin spotify pcloud-drive nordvpn-bin obsidian
sudo systemctl enable --now nordvpnd
sudo gpasswd -a ggraca nordvpn

# Gaming
yay -S steam discord goverlay xone xone-dongle-firmware

# Dev
yay -S sublime-text-4 cursor-bin docker mise usage
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


yay -S docker postgresql # postgresql-libs required to interact with postgres containers
sudo systemctl enable --now docker.service

docker run -d --name pg17 -v pg17data:/var/lib/postgresql/data -v /var/run/postgresql:/var/run/postgresql -e POSTGRES_HOST_AUTH_METHOD=trust -p5432:5432 postgres:17
docker start pg17

docker run -d --name redis -v redisdata:/data -p6379:6379 redis:latest
docker start redis
```

### TODO

- [ ] Brave CPU usage on google maps
- [ ] powerprofilesctl info/triggers
- [ ] Alternative to swaync
- [ ] config folders using xdg-user-dirs (or disable it)
- [ ] track kitty config
- [ ] libappindicator-gtk3 needed for pcloud?
- [ ] auto purge files from home
- [ ] ask for ssh password once per session
- [ ] battery indicator
