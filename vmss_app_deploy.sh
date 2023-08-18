#!/bin/bash

sudo apt update
sudo apt install -y python3.7
python3 --version
which python3
cd /usr/bin/
sudo rm python3
sudo ln -s python3.7 python3
cd ~/udacity-cdaz-p4
python3 --version
sudo -H pip3 install --upgrade pip
wget https://download.redis.io/releases/redis-6.2.4.tar.gz
tar xzf redis-6.2.4.tar.gz
cd redis-6.2.4
make
redis-cli ping
cd ..
pip install -r requirements.txt
