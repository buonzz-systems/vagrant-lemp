#!/usr/bin/env bash

apt-get update

apt-get upgrade -y

apt-get install nginx php5-fpm php5-cli php5-mcrypt git -y
apt-get install mysql-server -y