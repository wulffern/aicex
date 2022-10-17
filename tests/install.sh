#!/usr/bin/env bash

#- Get cicpy
test -d cicpy || git clone https://github.com/wulffern/cicpy.git
cd cicpy
git pull
python3 -m pip install --user -e .
cd ..


#- Get cicsim
test -d cicsim || git clone https://github.com/wulffern/cicsim.git
cd cicsim
git pull
python3 -m pip install -r requirements.txt --user
python3 -m pip install --user -e .
cd ..

#- Get aicex
test -d aicex || git clone https://github.com/wulffern/aicex.git
cd aicex
git pull
cd ..

echo "You also need magic, netgen, xschem, ngspice and cic. See tests/install_ubuntu.sh for details"
echo "I also assume that you've installed pdk in \$PDK_ROOT"
echo "You should also check you have .local/bin in your PATH (that's where the python scripts are installed)"
