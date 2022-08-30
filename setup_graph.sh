#!/bin/bash

# navigate to your dev directory
cd ~/dev

# Clone the Project (with ssh, change the link if you want https)
git clone git@github.com:Centers-Health/dynamics-graph.git
cd ~/dev/dynamics-graph

# Create empty .env file
touch .env

# Open a shell in the graph container
dm shell

# Do a yarn install
yarn install

# Exit the shell (click ctrl+d)

# run the project
dm up