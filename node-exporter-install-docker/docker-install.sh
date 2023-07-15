#!/bin/bash
apt-get update
apt-get install -y ca-certificates curl gnupg
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
groupadd docker
usermod -aG docker $USER
newgrp docker
bash
docker compose up -d
ip=$(ip addr show eth0 | grep "inet " | sed 's/^[ \t]*//g' | cut -d' ' -f2 | sed -r 's/\/.+//')
echo $ip
