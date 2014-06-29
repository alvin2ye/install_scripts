# install rbenv ubuntu 10.04 LST
# curl https://gist.github.com/alvin2ye/c8269e37ca20b59f9bb4/raw/install_all.bash > /tmp/install_all.bash && bash /tmp/install_all.bash
 
# root
 
# 安装必要的包
sudo apt-get -y install curl git-core python-software-properties
 
sudo locale-gen zh_CN.UTF-8
sudo dpkg-reconfigure locales
sudo apt-get install -y git
sudo apt-get install -y wget vim build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libxml2-dev libxslt-dev autoconf automake libtool imagemagick libmagickwand-dev libpcre3-dev
sudo apt-get install -y libcurl4-openssl-dev
 
# sqlite3
sudo apt-get install -y sqlite3 libsqlite3-dev
 
# mysql 
 
 
echo mysql-server mysql-server/root_password password my-pwd-1Z3 | sudo debconf-set-selections
echo mysql-server mysql-server/root_password_again password my-pwd-1Z3 | sudo debconf-set-selections
 
sudo apt-get -y install mysql-server libmysqlclient-dev
 
sudo cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
 
# install nginx 
sudo apt-get -y install nginx
sudo service nginx start
 