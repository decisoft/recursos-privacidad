#!/bin/bash

apt update
apt upgrade

curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

apt-get install libffi-dev libssl-dev
apt install python3-dev
apt-get install -y python3 python3-pip

pip3 install docker-compose

apt install cockpit

bash <(curl -Ss https://my-netdata.io/kickstart.sh) --stable-channel --disable-telemetry
