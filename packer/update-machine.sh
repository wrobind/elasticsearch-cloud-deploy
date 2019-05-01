#!/bin/bash

export DEBIAN_FRONTEND=Noninteractive

sudo DEBIAN_FRONTEND=Noninteractive apt-get update
sudo -E rm /boot/grub/menu.lst

sudo -E apt-get upgrade -y
sudo -E apt-get install -y software-properties-common git python-dev htop ntp jq apt-transport-https

# Disable daily apt unattended updates.
echo 'APT::Periodic::Enable "0";' >> /etc/apt/apt.conf.d/10periodic

wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py || python2 get-pip.py
pip install boto awscli || pip2 install boto awscli 
