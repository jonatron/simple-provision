#! /bin/bash

# making sure we start from the proper working directory
cd /vagrant

apt-get -y update
apt-get -y upgrade

apt-get -y install git python3 python3-pip python3-venv nano

mkdir /var/venv/
chown -R vagrant:vagrant /var/venv
