#!/usr/bin/env bash

git submodule init
git submodule update
source tests/bashrc
echo "$HOME/.local/bin" >> $GITHUB_PATH
echo "/opt/eda/bin" >> $GITHUB_PATH
export PATH=/opt/eda/bin:$HOME/.local/bin:$PATH
#sudo echo /opt/eda/lib >> /etc/ld.so.conf.d/randomLibs.conf
#sudo ldconfig
echo $HOME
make test
