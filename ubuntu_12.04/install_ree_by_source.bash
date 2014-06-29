sudo ./sudo_install_packages.bash
cd /tmp/
wget http://rubyenterpriseedition.googlecode.com/files/ruby-enterprise-1.8.7-2012.02.tar.gz
tar xzf ruby-enterprise-1.8.7-2012.02.tar.gz && cd ruby-enterprise-1.8.7-2012.02
cd ./source
wget 'https://github.com/wayneeseguin/rvm/raw/master/patches/ree/1.8.7/tcmalloc.patch'
patch -p1 < tcmalloc.patch

wget 'https://github.com/wayneeseguin/rvm/raw/master/patches/ree/1.8.7/stdout-rouge-fix.patch'
patch -p1 < stdout-rouge-fix.patch

export CFLAGS="-O2 -fno-tree-dce -fno-optimize-sibling-calls"
export CONFIGURE_OPTS="--no-tcmalloc"
cd .. && ./installer