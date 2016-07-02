#!/bin/bash

cd
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

export CFLAGS="-O2 -fno-tree-dce -fno-optimize-sibling-calls"
CONFIGURE_OPTS="--no-tcmalloc" rbenv install ree-1.8.7-2012.02
rbenv global ree-1.8.7-2012.02
rbenv shell ree-1.8.7-2012.02

exec $SHELL

echo "gem: --no-ri --no-rdoc" > ~/.gemrc
gem install bundler --no-ri --no-rdoc
rbenv rehash

ruby -v
bundle --version
