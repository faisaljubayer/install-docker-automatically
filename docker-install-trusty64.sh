#!/bin/sh
sudo apt-get update && sudo apt-get -y upgrade
sudo apt-get install -y \
	wget \
	openssh-client \
	curl	\
	git-core \
	build-essential

sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    software-properties-common
sudo apt-get update
sudo apt-get -y install \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual
sudo apt-get -y update
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository -y  \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install -y docker-ce
sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
