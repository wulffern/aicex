#!/usr/bin/env bash
git submodule init
git submodule update
source tests/bashrc
echo "$HOME/.local/bin" >> $GITHUB_PATH
echo "/opt/eda/bin" >> $GITHUB_PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/eda/lib
export PATH=/opt/eda/bin:$HOME/.local/bin:$PATH
echo $HOME
make test
