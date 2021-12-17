# aicex
Files for Advanced Integrated Circuits


## Getting Started

Clone this repository, update submodules, clone cicsim

    git clone git@github.com:wulffern/cicsim.git
    cd cicsim
    pip3 install -r requirements.txt --user
    pip3 install --user -e .

    git clone git@github.com:wulffern/aicex.git
    cd aicex
    git submodule update
    

Check that example runs

    cd example/char
    make tfs plotall

