#!/bin/bash

apt update
apt -y install php-common composer php-gd nodejs curl
curl -s https://deb.nodesource.com/setup_16.x | sudo bash
snap install docker
snap install phpstorm --classic
docker run --rm -p 3306:3306 --name=jtx-mysql -eMYSQL_ROOT_PASSWORD=root -d mysql:latest
