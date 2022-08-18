#!/bin/bash

# install git
sudo apt install git -y
git config --global user.name "Ari Abramowitz"
git config --global user.email "ari.abramowitz1@gmail.com"

# install xclip
sudo apt install xclip

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