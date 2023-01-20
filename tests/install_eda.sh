#!/usr/bin/env bash



export PDK_ROOT=/opt/pdk/share/pdk

export LD_LIBRARY_PATH=/opt/eda/lib
export PATH=/opt/eda/bin:$HOME/.local/bin:$PATH

cd tests
make requirements
make tt eda_compile
sudo make eda_install
make clean
cd ..
