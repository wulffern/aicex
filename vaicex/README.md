
# Vagrant box for aicex 

Maybe you've tried to install the docker, and it does not work, or you've tried
to install the tools locally, but that did not work either.

Vagrant is yet another way to try and get the tools.

## Programs you need 

- [Vagrant](https://www.vagrantup.com)
- [VirtualBox](https://www.virtualbox.org)


## Get box from vagrant cloud 

``` bash
mkdir vaicex
cd vaicex 
```

Create a text file with following content 

``` bash
Vagrant.configure("2") do |config|
  config.vm.box = "wulffern/vaicex"
  config.vm.box_version = "0.1.0"
  config.vm.network "private_network", type: "dhcp"
  config.vm.network "forwarded_port", guest: 22, host: 2023
  config.ssh.forward_agent = true
  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 2
    #v.gui = true
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    v.customize ['modifyvm', :id, '--cableconnected1', 'on']
  end
end
```

Start the box 

``` bash
vagrant up
```

Log into the box from either WSL2 (With Mobaxterm or Windows 11), or terminal on mac/linux

``` bash
vagrant ssh

```

## Build your own vagrant box 

### Clone repo 

On linux or mac
``` bash
git clone https://github.com/wulffern/aicex.git
```

On window

``` bash
git clone https://github.com/wulffern/aicex.git --config core.autocrlf=input
```

### Start box 

``` bash
cd aicex/vaciex
vagrant up 
```

### SSH to box 

``` bash
vagrant ssh
```

- If you're lucky, then all tools should work 
- If unlucky, then check /tests/ for the install scripts


