#!/bin/bash

# navigate to your dev directory
cd ~/dev

# Clone the Project (with ssh, change the link if you want https)
git clone git@github.com:Centers-Health/mentor-program.git
cd ~/dev/mentor-program

# create a .env file...
# ms teams one of the other devs for a copy @aareman or @yludner

# Install python dependencies
dm poetry install

# run migrations
dm manage migrate

# Create superuser & add to all groups. based on https://stackoverflow.com/a/26091252
USERNAME="docker"
EMAIL="docker@docker.com"
PASSWORD="docker"
echo "
from django.contrib.auth import get_user_model;
from django.contrib.auth.models import Group;

User = get_user_model();
User.objects.create_superuser('$USERNAME', '$EMAIL', '$PASSWORD');
user = User.objects.get(username='$USERNAME');
[group.user_set.add(user) for group in Group.objects.all()]
" | dm manage shell

# Add user to groups
# echo "from django.contrib.auth import get_user_model; from django.contrib.auth.models import Group; User = get_user_model(); user = User.objects.get(username='$USERNAME'); [group.user_set.add(user) for group in Group.objects.all()]" | python manage.py shell

# Seed database with alert types, phases, etc...
dm manage seed_db

# run the project
dm up

# you should be able to go to your browser and see the login page at
# https://mentor.localhost
