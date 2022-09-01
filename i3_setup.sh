#!/bin/bash

sudo apt install i3 brightnessctl gnome-screensaver feh -y
# i3
mkdir ~/.config/i3
git clone git@github.com:AriAbr/i3-setup.git ~/.config/i3
sudo apt install i3status suckless-tools i3blocks rofi arandr -y

# i3blocks
sudo apt install fonts-font-awesome acpi light -y
mkdir ~/.config/i3blocks
git clone git@github.com:AriAbr/i3blocks-setup.git ~/.config/i3blocks

# i3-volume
git clone https://github.com/hastinbe/i3-volume.git ~/.config/i3-volume

# i3 gnome
git clone https://github.com/i3-gnome/i3-gnome.git
cd i3-gnome
sudo make install
sudo apt install gnome-flashback gnome-power-manager
sudo apt-get -y install gnome-power-manager
gsettings set org.gnome.gnome-flashback desktop false
cd ..
rm -rf i3-gnome
