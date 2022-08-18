#!/bin/bash

sudo apt install docker.io docker-compose -y
sudo systemctl enable --now docker
sudo groupadd docker
sudo usermod -aG docker $USER
# TODO This fails. Not sure why
# newgrp docker || true
docker run hello-world
