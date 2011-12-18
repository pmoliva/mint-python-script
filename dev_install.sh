#!/bin/bash

# install a python development environment

# mercurial, git
apt-get install  git -y
apt-get  install  mercurial -y

# python-pip
apt-get  install python-pip -y

# virtualenv
pip  install virtualenv
pip  install virtualenvwrapper
#python dev 
apt-get  install python2.7-dev -y
# vim terminal and ui dependences
apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev libgtk2.0-dev libatk1.0-dev libbonoboui2-dev libcairo2-dev libx11-dev libxpm-dev libxt-dev -y
#vim
hg clone https://vim.googlecode.com/hg/ vim
cd vim
./configure --enable-pythoninterp --with-python-config-dir=/usr/lib/python2.7/config --enable-gui=gtk2
make 
make install
cd
git clone https://github.com/sontek/dotfiles.git
cd dotfiles
./install.sh vim
cd


