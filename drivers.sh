#!/bin/bash
sudo apt update
sudo apt ugprade -y
sudo apt install -y build-essential make git gcc nvidia-driver-525
cd ~
git clone https://github.com/RinCat/RTL88x2BU-Linux-Driver RTL88x2BU
cd RTL88x2BU
make
sudo make install
