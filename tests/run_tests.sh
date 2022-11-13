#!/usr/bin/env bash
source tests/bashrc
echo "$HOME/.local/bin" >> $GITHUB_PATH
echo "/opt/eda/bin" >> $GITHUB_PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/eda/lib
export PATH=/opt/eda/bin:$HOME/.local/bin:$PATH
echo $HOME

#- clone IPs
cd ip
cicconf clone --https
cd ..

make test
