#!/bin/bash

curl -s https://deb.nodesource.com/setup_16.x | sudo bash
apt update && apt upgrade -y
apt -y install php-common composer php-gd nodejs
snap install docker
snap install phpstorm --classic
docker run --rm -p 3306:3306 --name=jtx-mysql -eMYSQL_ROOT_PASSWORD=root -d mysql:latest
