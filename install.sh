#!/usr/bin/env bash


#- Get cIcCreator
mkdir cic
cd cic
git clone https://github.com/wulffern/ciccreator.git
cd ciccreator
git branch develop
cd ../../

#- Get cicpy
git clone https://github.com/wulffern/cicpy.git
cd cicpy
pip3 install -r requirements.txt --user
pip3 install --user -e .
cd ..

#- Get cicsim
git clone https://github.com/wulffern/cicsim.git
cd cicsim
git checkout develop
pip3 install -r requirements.txt --user
pip3 install --user -e .
cd ..

#- Get aicex
git clone https://github.com/wulffern/aicex.git
cd aicex
git submodule init
git submodule update

echo "Trying to compile ciccreator"
# Try and compile ciccreator
cd cic/ciccreator
make
