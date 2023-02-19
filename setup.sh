#!/bin/bash

apt install curl
curl -s https://deb.nodesource.com/setup_16.x | sudo bash
apt update
apt -y install php-common  composer nodejs npm curl \
		openssl php-bcmath php-curl php-json php-mbstring php-mysql php-tokenizer php-xml php-zip php-gd
snap install docker
snap install phpstorm --classic
docker run --rm -p 3306:3306 --name=jtx-mysql -eMYSQL_ROOT_PASSWORD=root -d mysql:latest
