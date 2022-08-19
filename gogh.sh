#!/bin/bash

TEMP_DIR=gogh_tmp

mkdir $TEMP_DIR

# clone the repo into "$HOME/src/gogh"
git clone https://github.com/Gogh-Co/Gogh.git $TEMP_DIR
cd $TEMP_DIR/themes

# necessary on ubuntu
export TERMINAL=gnome-terminal

# install themes
./dark-pastel.sh

cd ../..
rm -rf $TEMP_DIR
