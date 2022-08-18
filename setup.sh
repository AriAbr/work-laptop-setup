#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt install python3-pip python-is-python3 -y

# install git
echo "---> installing git..."
sudo apt install git -y
git config --global user.name "Ari Abramowitz"
git config --global user.email "ari.abramowitz1@gmail.com"

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

# install vscode
sudo snap install --classic code