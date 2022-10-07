#!/usr/bin/env bash


#- Get cicpy
git clone https://github.com/wulffern/cicpy.git
cd cicpy
git pull
python3 -m pip install --user -e .
cd ..

#- Get cicsim
git clone https://github.com/wulffern/cicsim.git
cd cicsim
git pull
python3 -m pip install -r requirements.txt --user
python3 -m pip install --user -e .
cd ..

#- Get aicex
git clone https://github.com/wulffern/aicex.git
cd aicex
git pull
git submodule init
git submodule update
cd ..

echo "You also need magic, netgen, xschem, ngspice and cic. See tests/install_ubuntu.sh for details"
