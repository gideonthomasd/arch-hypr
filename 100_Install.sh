#!/bin/bash

sudo pacman -Syu

yay -S hyprland wofi hyprpaper micro gvfs firefox timeshift grub-btrfs kitty geany geany-plugins geany-themes pcmanfm-gtk3 swaylock

sudo pacman --no-confirm -S audacious copq yt-dlp pulsemixer htop calcurse lxsession playerctl lxterminal brave-bin font-manager pycharm-community-edition gthumb blueman tk python-requests python-json5 python-urllib3 python-dateutil
sudo pacman --no-confirm -S pacman-contrib pamixer btop ttf-jetbrains-mono-nerd starship ttf-font-awesome blueman xfce4-terminal lxterminal

mkdir -p ~/.config/hypr
cd hypr
chmod +x *.sh
cp -r * ~/.config/hypr
cd ..

cp -r kitty ~/.config

mkdir ~/.config/neofetch
cp config.conf ~/.config/neofetch/config.conf

mv ~/.config/waybar ~/,config/waybar-original
cp -r waybar ~/.config
cp -r waybar-new ~/.config

cp start.sh ~/start.sh
sudo cp brave-browser.desktop /usr/share/applications/brave-browser.desktop

sudo pacman --no-confirm -S nwg-look-bin nwg-bar-bin nwg-drawer-bin ttf-font-awesome
mv ~/.config/nwg-bar ~/.config/nwg-bar-old
cp -r nwg-bar ~/.config

cp snapshot.sh ~/snapshot.sh
cp bashrc ~/.bashrc
mkdir -p ~/.config/wofi
cp style.css ~/.config/wofi
cp lock.sh ~/.config/lock.sh


