#!/bin/bash
 
cd ~
git clone git://github.com/sstephenson/rbenv.git .rbenv
mkdir ~/.rbenv/plugins
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
 
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> $HOME/.profile
echo 'eval "$(rbenv init -)"' >> $HOME/.profile
source $HOME/.profile
rbenv install 1.9.3-p545
rbenv rehash
rbenv global 1.9.3-p545
rbenv shell 1.9.3-p545
gem install bundler --no-ri --no-rdoc
rbenv rehash
ruby -v
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
bundle --version