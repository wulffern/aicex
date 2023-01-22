#!/usr/bin/env bash
/bin/bash tests/install_cicconf.sh

cd ip/cicsim
python3 -m pip install --user -e .
cd ../..

cd ip/cicpy/
python3 -m pip install --user -e .
cd ../..

/bin/bash tests/run_tests.sh
