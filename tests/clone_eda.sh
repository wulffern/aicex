#!/usr/bin/env bash
#
export AICEX=${PWD}
#- Get EDA
cd /
sudo test -d opt || mkdir opt
cd opt
sudo chmod 777 .
test -d eda || git clone https://github.com/wulffern/eda
cd ${AICEX}
