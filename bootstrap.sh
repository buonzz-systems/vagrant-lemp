#!/usr/bin/env bash

apt-get update

sudo apt-get install -y php5-mcrypt
sudo php5enmod mcrypt

apt-get install -y php5-cli git