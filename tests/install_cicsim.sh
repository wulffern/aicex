#!/usr/bin/env bash
#

#- Get cicsim
test -d cicsim || git clone https://github.com/wulffern/cicsim.git
cd cicsim
git pull
python3 -m pip install -r requirements.txt --user
python3 -m pip install --user -e .
cd ..
