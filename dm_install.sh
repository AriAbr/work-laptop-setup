#!/bin/bash

mkdir ~/dev
cd ~/dev
git clone git@github.com:Centers-Health/dev-matrix.git ~/.dev-matrix
cd ~/.dev-matrix
make install
make link
source ~/.bashrc
dm update
dm env init
