#!/usr/bin/env sh


cd /opt/pdk/share/pdk/
test -d IHP-Open-PDK || git clone git@github.com:IHP-GmbH/IHP-Open-PDK.git && sudo ln -s IHP-Open-PDK/ihp-sg13g2
python3 /opt/pdk/share/pdk/IHP-Open-PDK/ihp-sg13g2/libs.tech/xschem/install.py
