#!/bin/bash

TEMP_DIR=vpn_tmp
mkdir $TEMP_DIR

sudo apt update && sudo apt upgrade -y
sudo apt install default-jdk -y
tar -xvf connecttunnel-linux64.tar -C ./$TEMP_DIR
cd $TEMP_DIR
sudo ./install.sh
cd ..

rm -rf $TEMP_DIR
