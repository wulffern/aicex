#!/usr/bin/env bash

#- Get cicpy
test -d cicpy || git clone https://github.com/wulffern/cicpy.git
cd cicpy
git pull
python3 -m pip install --user -e .
cd ..
