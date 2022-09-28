#!/usr/bin/env bash
#
#- Prerequisites
apt update
apt -y install python3-pip libqt5core5a libxft2 libxss1 libgl1-mesa-glx libglu1-mesa libxaw7

export AICEX=${PWD}
#- Get EDA
cd /
test -d opt || mkdir opt
cd opt
test -d eda || git clone https://github.com/wulffern/eda
cd ${AICEX}
