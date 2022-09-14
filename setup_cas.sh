#!/bin/bash

# navigate to your dev directory
cd ~/dev

# Clone the Project (with ssh, change the link if you want https)
git clone git@github.com:Centers-Health/dynamics-cas.git
cd ~/dev/dynamics-cas

touch .env

read  -n 1 -p "Copy the CAS env, then press ENTER to continue..." $foo

# Install python dependencies
dm poetry install

dm poetry shell

# Install and setup pre-commit hooks
pre-commit install -t pre-commit -t pre-push

# run migrations
dm manage migrate

# Create superuser. based on https://stackoverflow.com/a/26091252
USERNAME="docker"
EMAIL="docker@docker.com"
PASSWORD="docker"
echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('$USERNAME', '$EMAIL', '$PASSWORD')" | python manage.py shell

# run the project
dm up