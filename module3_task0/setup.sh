#!/bin/bash
apt-get update && apt-get install -y hugo make
wget https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.tar.gz
tar -zxvf hugo_extended_0.84.0_Linux-64bit.tar.gz
sudo mv hugo /usr/local/bin/
rm hugo_extended_0.84.0_Linux-64bit.tar.gz
make build