#!/usr/bin/env bash


if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # make sure pip is installed
    DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC sudo apt install -y python3-pip git
fi

mkdir tools
cd tools
#- Get cIcCreator
git clone https://github.com/wulffern/ciccreator.git
cd ciccreator
git pull
cd ../../

#- Get cicpy
git clone https://github.com/wulffern/cicpy.git
cd cicpy
git pull
python3 -m pip install --user -e .
cd ..

#- Get cicsim
git clone https://github.com/wulffern/cicsim.git
cd cicsim
git checkout develop
git pull
python3 -m pip install -r requirements.txt --user
python3 -m pip install --user -e .
cd ..

if [ "$(uname)" == "Darwin" ]; then
    echo "You need to install qt5 and compile ciccreator manually"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    echo "Trying to compile ciccreator"

    # Try and compile ciccreator
    cd ciccreator

    # Fresh ubuntu 20 LTS needs
    DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC sudo apt install -y make qtbase5-dev build-essential --fix-missing

    make
fi
