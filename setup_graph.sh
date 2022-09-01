#!/bin/bash

# navigate to your dev directory
cd ~/dev

# Clone the Project (with ssh, change the link if you want https)
git clone git@github.com:Centers-Health/dynamics-graph.git
cd ~/dev/dynamics-graph

# Create empty .env file
touch .env

# Do a yarn install in the container
echo "yarn install" | dm shell

# run the project
dm up