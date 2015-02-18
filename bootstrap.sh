#!/usr/bin/env bash

apt-get update

# install mcrypt
sudo apt-get install -y php5-mcrypt
sudo php5enmod mcrypt

# install console and git
apt-get install -y php5-cli git curl

# install mongodb
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo apt-get install -y php5-mongo

# install supervisord & beanstalkd
sudo apt-get install -y supervisor
sudo aptitude install -y beanstalkd

# Install Composer
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
