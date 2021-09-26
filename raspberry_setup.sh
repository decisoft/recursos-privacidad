#!/bin/bash

apt update
apt upgrade

curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

apt-get install libffi-dev libssl-dev neofetch
apt install python3-dev
apt-get install -y python3 python3-pip

pip3 install docker-compose

systemctl unmask systemd-logind

docker volume create portainer_data
docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce

apt install cockpit

bash <(curl -Ss https://my-netdata.io/kickstart.sh) --stable-channel --disable-telemetry
