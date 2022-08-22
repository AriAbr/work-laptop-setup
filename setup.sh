#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt install python3-pip python-is-python3 -y

# install chrome
sudo dpkg --force-depends -i ./google-chrome-stable_current_amd64.deb
sudo apt -f install

# install vscode
sudo snap install --classic code

# install flameshot
sudo dpkg --force-depends -i ./flameshot-12.1.0-1.ubuntu-20.04.amd64.deb
sudo apt -f install

# install i3, i3-gnome
echo "---> setting up i3..."
chmod +x ./i3_setup.sh
./i3_setup.sh

# install git
echo "---> setting up git..."
chmod +x ./git_setup.sh
./git_setup.sh

# install xclip
echo "---> installing xclip..."
sudo apt install xclip -y

# install python3
echo "---> installing python3..."
sudo apt install python3.8-dev python3.8-venv -y

# install make
echo "---> installing make..."
sudo apt-get install build-essential make -y

# install docker
echo "---> installing docker..."
chmod +x ./docker_install.sh
./docker_install.sh

# install dm
echo "---> installing dm..."
chmod +x ./dm_install.sh
./dm_install.sh

# setup github ssh
echo "---> setting up github ssh..."
chmod +x ./github_ssh.sh
./github_ssh.sh

# setup vpn
echo "---> setting up vpn..."
chmod +x ./vpn_setup.sh
./vpn_setup.sh

# clone projects
echo "---> cloning projects..."
chmod +x ./clone_projects.sh
./clone_projects.sh

# gogh
echo "---> gogh terminal setup..."
chmod +x ./gogh.sh
./gogh.sh

# autoremove
sudo apt autoremove -y