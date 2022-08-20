#!/usr/bin/env bash


if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # make sure pip is installed
    sudo apt install -y python3-pip
fi

#- Get cIcCreator
mkdir cic
cd cic
git clone https://github.com/wulffern/ciccreator.git
cd ciccreator
git checkout develop
git pull
cd ../../

#- Get cicpy
git clone https://github.com/wulffern/cicpy.git
cd cicpy
git pull
python3 -m pip install -r requirements.txt --user
python3 -m pip install --user -e .
cd ..

#- Get cicsim
git clone https://github.com/wulffern/cicsim.git
cd cicsim
git checkout develop
git pull
python3 -m pip install --user -e .
cd ..

#- Get aicex
git clone https://github.com/wulffern/aicex.git
cd aicex
git pull
git submodule init
git submodule update
cd ..


if [ "$(uname)" == "Darwin" ]; then
    echo "You need to install qt5 and compile ciccreator manually"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    echo "Trying to compile ciccreator"

    # Try and compile ciccreator
    cd cic/ciccreator

    # Fresh ubuntu 20 LTS needs
    sudo apt install -y make qtbase5-dev build-essential --fix-missing

    make
fi
