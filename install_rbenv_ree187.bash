#!/bin/bash
 
cd ~
git clone git://github.com/sstephenson/rbenv.git .rbenv
mkdir ~/.rbenv/plugins
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
 
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> $HOME/.profile
echo 'eval "$(rbenv init -)"' >> $HOME/.profile
source $HOME/.profile

# if your gcc version > 4.6 must run
export CFLAGS="-O2 -fno-tree-dce -fno-optimize-sibling-calls"

CONFIGURE_OPTS="--no-tcmalloc" rbenv install ree-1.8.7-2012.02
rbenv rehash
rbenv global ree-1.8.7-2012.02
rbenv shell ree-1.8.7-2012.02
gem install bundler --no-ri --no-rdoc
rbenv rehash
ruby -v
bundle --version
