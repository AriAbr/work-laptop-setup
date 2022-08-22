#!/bin/bash

cd ~/dev
git clone git@github.com:Centers-Health/medicaid-application.git
cd medicaid-application

dm poetry install

pre-commit install -t pre-commit -t pre-push

dm manage migrate

# Create superuser. based on https://stackoverflow.com/a/26091252
USERNAME="docker"
EMAIL="docker@docker.com"
PASSWORD="docker"
echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('$USERNAME', '$EMAIL', '$PASSWORD')" | python manage.py shell

dm manage import_facilities

dm manage resident_activity

dm manage seed_db

dm up
