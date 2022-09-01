#!/bin/sh

sudo apt install curl
sudo apt install git
echo "installing docker"
curl -sSL https://get.docker.com/ | sh
sudo systemctl start docker
sudo systemctl enable docker
echo "#######################  DOCKER INSTALLED"
echo "installing docker-compose"
echo "installing docker-compose"
echo "installing docker-compose"
echo "installing docker-compose"
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
echo "####################### DOCKER-COMPOSE INSTALLED"
echo "installing wazuh"
git clone https://github.com/wazuh/wazuh-docker.git -b v4.3.7 --depth=1
cd ./wazuh-docker/single-node
docker-compose -f generate-indexer-certs.yml run --rm generator
echo "####################### WAZUH INSTALLED"
