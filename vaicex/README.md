
# Vagrant box for aicex 

Maybe you've tried to install the docker, and it does not work, or you've tried
to install the tools locally, but that did not work either.

Vagrant is yet another way to try and get the tools.

## Programs you need 

- [Vagrant](https://www.vagrantup.com)
- [VirtualBox](https://www.virtualbox.org)

## Clone repo 

On linux or mac
``` bash
git clone https://github.com/wulffern/aicex.git
```

On window

``` bash
git clone https://github.com/wulffern/aicex.git --config core.autocrlf=input
```

## Start box 

``` bash
cd vaciex
vagrant up 
```

## SSH to box 

``` bash
vagrant ssh
```

- If you're lucky, then all tools should work 
- If unlucky, then check /tests/ for the install scripts


