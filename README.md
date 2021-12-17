# aicex
Files for Advanced Integrated Circuits


## Requirements

ngspice > 34

## Getting Started

Clone this repository, update submodules, clone cicsim

    git clone git@github.com:wulffern/cicsim.git
    git checkout develop
    cd cicsim
    pip3 install -r requirements.txt --user
    pip3 install --user -e .
    cd ..
    git clone git@github.com:wulffern/aicex.git
    cd aicex
    git submodule init
    git submodule update
    

Check that example runs

    cd example/char
    make tfs plotall

