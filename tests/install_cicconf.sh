#!/usr/bin/env bash
#

#- Get cicconf
cd ip
test -d cicconf || git clone https://github.com/wulffern/cicconf.git
cd cicconf
git pull
python3 -m pip install --user -e .
cd ..
cd ..
