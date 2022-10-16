#!/usr/bin/env bash

git clone https://github.com/wulffern/aicex.git
cd aicex
mkdir .ssh
cat ~/.ssh/id_rsa.pub > .ssh/authorized_keys
docker run --rm  -p 2022:22 -v `pwd`:/home/aicex/ -i wulffern/aicex:latest &
