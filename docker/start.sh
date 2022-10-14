#!/usr/bin/env bash

docker run --rm  -it -p 2022:22 -v `pwd`:/home/aicex/ -i wulffern/aicex:latest bash --login
