#!/usr/bin/env bash

export AICEX=${PWD}
#- Get EDA
cd /
sudo test -d opt || mkdir opt
cd opt
sudo chmod 777 .
sudo test -d pdk || mkdir pdk
sudo test -d pdk/share || mkdir pdk/share
cd pdk/share
test -d pdk || git clone https://github.com/wulffern/pdk
cd ${AICEX}
