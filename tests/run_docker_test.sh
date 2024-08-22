#!/usr/bin/env bash

cd ip/cicsim
python3 -m pip install  .
cd ../..

cd ip/cicconf/
python3 -m pip install  .
cd ../..

/bin/bash tests/run_tests.sh
