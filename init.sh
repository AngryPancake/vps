#!/bin/sh

set -o errexit
set -o nounset

IFS=$(printf '\n\t')

# Docker
sudo apt remove --yes docker docker-engine docker.io containerd runc || true
sudo apt update
sudo apt install -y git wget curl nano vim
wget -qO- https://get.docker.com/ | sh

# Install docker-compose
sudo apt install -y docker-compose docker-compose-plugin
# Install docker-cleanup command
#cd /tmp
#git clone https://gist.github.com/76b450a0c986e576e98b.git
#cd 76b450a0c986e576e98b
#sudo mv docker-cleanup /usr/local/bin/docker-cleanup
#sudo chmod +x /usr/local/bin/docker-cleanup

