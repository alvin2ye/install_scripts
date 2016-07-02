#!/bin/bash

sudo apt-get -y update
sudo apt-get -y upgrade


sudo apt-get -y install curl git-core python-software-properties

sudo locale-gen zh_CN.UTF-8
sudo dpkg-reconfigure locales
sudo apt-get install -y build-essential openssl zlib1g zlib1g-dev libyaml-dev autoconf automake libtool imagemagick libpcre3-dev
sudo apt-get install -y zlib1g-dev libcurl4-openssl-dev \
                     libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 \
                     libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties \
                     wget vim
# sqlite3
sudo apt-get install -y sqlite3 libsqlite3-dev

# use cst
sudo cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# install nginx
sudo apt-get -y install nginx
sudo service nginx start