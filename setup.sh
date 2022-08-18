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
ssh-keygen -t rsa -b 4096 -C "aabramowitz@dynamichcsolutions.com"
xclip -sel c < ~/.ssh/id_rsa.pub
echo "ssh key copied to clipboard"
echo "To continue with github ssh setup, open https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account"
echo "Then press Y, then ENTER to continue laptop setup."
read -n 1 -r
echo    # (optional) move to a new line
if ! [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "Exiting laptop setup"
    exit 1
fi

# install vscode
sudo snap install --classic code