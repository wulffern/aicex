#!/usr/bin/env bash
#!/bin/bash
test -d trilinos-build || mkdir trilinos-build
cd trilinos-build

cmake \
-D CMAKE_INSTALL_PREFIX=/opt/eda/trilinos \
-C ../xyce/cmake/trilinos/trilinos-config.cmake \
../trilinos

cmake --build . -j 2 -t install
cd ..

test -d xyce-build || mkdir xyce-build
cd xyce-build

cmake \
-D CMAKE_INSTALL_PREFIX=/opt/eda/xyce \
-D Trilinos_ROOT=/opt/eda/trilinos \
../xyce

cmake --build . -j 2 -t install
