#!/usr/bin/env bash

if [ ! -f $HOME/.ssh/id_rsa.pub ]; then

    echo "Error: No RSA SSH key found at $HOME/.ssh/id_rsa.pub";
    echo "Create a key with 'ssh-keygen -t rsa' before running install";
    exit 0;

fi


if [ ! -d aicex ]; then

   git clone https://github.com/wulffern/aicex.git
   cd aicex
   mkdir .ssh
   cat $HOME/.ssh/id_rsa.pub > .ssh/authorized_keys
   sleep 2s
   docker run --rm  -p 2022:22 -v `pwd`:/home/aicex/ -i wulffern/aicex:latest &

else
    echo "aicex already installed"

fi
