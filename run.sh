#!/usr/bin/env bash

if [ ! -f $HOME/.ssh/id_rsa.pub ]; then

    echo "Error: No RSA SSH key found at $HOME/.ssh/id_rsa.pub";
    echo "Create a key with 'ssh-keygen -t rsa' before running install";
    exit 0;

fi

if [ ! -d .ssh ]; then
   mkdir .ssh
   cat $HOME/.ssh/id_rsa.pub > .ssh/authorized_keys
   sleep 1s
fi


if [ -d ../aicex ]; then
   docker run --rm --name aicex -p 2022:22 -v `pwd`:/home/aicex/ -i wulffern/aicex:24.04_latest &
   sleep 5s
   ssh -X -p 2022 aicex@localhost
fi
