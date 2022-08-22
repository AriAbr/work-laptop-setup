#!/bin/bash


PROJECTS="
git@github.com:Centers-Health/1095-C.git
git@github.com:django/django.git
git@github.com:Centers-Health/dynamics-py.git
git@github.com:Centers-Health/centers-sites.git
git@github.com:Centers-Health/dynamics-cas.git
git@github.com:Centers-Health/dynamics-py-core.git
git@github.com:Centers-Health/medicaid-application.git
git@github.com:Centers-Health/dynamics-graph.git
git@github.com:Centers-Health/mentor-program.git
git@github.com:Centers-Health/talent-acquisition.git
"

mkdir ~/dev

for PROJECT in $PROJECTS
do
    git -C ~/dev clone $PROJECT
done