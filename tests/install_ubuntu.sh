#!/usr/bin/env bash
#
#- Prerequisites
sudo apt update
sudo apt -y install python3-pip libqt5core5a libxft2 libxss1 libgl1-mesa-glx libglu1-mesa libxaw7 libcairo2

export AICEX=${PWD}
#- Get EDA
cd /
sudo test -d opt || mkdir opt
cd opt
sudo chmod 777 .
test -d eda || git clone https://github.com/wulffern/eda
cd ${AICEX}
