#!/bin/bash

echo mysql-server mysql-server/root_password password my-pwd-1Z3 | sudo debconf-set-selections
echo mysql-server mysql-server/root_password_again password my-pwd-1Z3 | sudo debconf-set-selections
sudo apt-get -y install mysql-server libmysqlclient-dev
sudo cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime