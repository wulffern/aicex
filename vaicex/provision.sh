#!/usr/bin/env bash

sudo ln -snf /usr/share/zoneinfo/$CONTAINER_TIMEZONE /etc/localtime && echo $CONTAINER_TIMEZONE > /etc/timezone

sudo apt-get update && \
    apt-get -y install sudo make \
    openssh-server  && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


DEBIAN_FRONTEND=noninteractive

test -d /opt || sudo mkdir /opt

cd /tests

export LD_LIBRARY_PATH=/opt/eda/lib
export PATH=/opt/eda/bin:$HOME/.local/bin:$PATH


make requirements
make tt
make eda_compile
sudo make eda_install
make clean

sudo python3 -m pip install matplotlib numpy click svgwrite pyyaml pandas tabulate wheel setuptools tikzplotlib

/bin/bash /tests/install_open_pdk.sh

rm -rf /tests/skywater-pdk
rm -rf /tests/open_pdk

echo "export PDK_ROOT=/opt/pdk/share/pdk" >> ~/.bashrc
echo "export LD_LIBRARY_PATH=/opt/eda/lib" >> ~/.bashrc
echo 'export PATH=/opt/eda/bin:$HOME/.local/bin:$PATH' >> ~/.bashrc
