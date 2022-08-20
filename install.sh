#!/usr/bin/env bash


mkdir cic
cd cic
git clone git@github.com:wulffern/ciccreator.git
cd ..
git clone git@github.com:wulffern/cicpy.git
cd cicpy
pip3 install -r requirements.txt --user
pip3 install --user -e .
git clone git@github.com:wulffern/cicsim.git
cd cicsim
git checkout develop
pip3 install -r requirements.txt --user
pip3 install --user -e .
cd ..
git clone git@github.com:wulffern/aicex.git
cd aicex
git submodule init
git submodule update

echo "Trying to compile ciccreator"
# Try and compile ciccreator
cd cic/ciccreator
make
