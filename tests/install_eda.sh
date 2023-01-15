#!/usr/bin/env bash



export PDK_ROOT=/opt/pdk/share/pdk

export LD_LIBRARY_PATH=/opt/eda/lib
export PATH=/opt/eda/bin:$HOME/.local/bin:$PATH


cd tests
sudo make requirements
sudo make all
sudo make clean
cd ..
