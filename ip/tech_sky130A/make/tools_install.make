#!/usr/bin/env bash

#- Makefile made for LTS 20.4

INSTALL_PATH=/usr/local/eda

all: apt tcl tk cmagic cxschem cnetgen cngspice copen_pdks end

bold=$(shell tput bold)
red=$(shell tput setaf 1)
green=$(shell tput setaf 2)
cyan=$(shell tput setaf 6)
normal=$(shell tput sgr0)
txt=${bold}${cyan}
end:
	@echo "${txt}Remember to add the following to your .bashrc file${normal}"
	@echo -e '${txt} export PDK_ROOT=${INSTALL_PATH}/share/pdk${normal}'
	@echo -e '${txt} export PATH=${INSTALL_PATH}/bin:$$PATH${normal}'

apt:
	echo "Install apt-stuff"
	sudo apt install -y csh flex bison tk8.6 tk8.6-dev libxpm-dev libxcb-render-util0-dev libx11-xcb-dev \
		libcairo2-dev autoconf libtool automake libc6-dev libomp-dev libxaw7-dev lib32readline-dev libreadline-dev

tclver=tcl8.6.10
tkver=tk8.6.10

${tclver}:
	wget https://prdownloads.sourceforge.net/tcl/${tclver}-src.tar.gz
	tar zxvf ${tclver}-src.tar.gz

${tkver}:
	wget https://prdownloads.sourceforge.net/tcl/${tkver}-src.tar.gz
	tar zxvf ${tkver}-src.tar.gz

tcl: ${tclver}
	cd ${tclver}/unix &&./configure --prefix=/usr/local/opt2/tcl-tk && make && sudo make install

tk: ${tkver}
	cd ${tkver}/unix && ./configure --prefix=/usr/local/opt2/tcl-tk --with-tcl=/usr/local/opt2/tcl-tk/lib --with-x --x-includes=/opt/X11/include --x-libraries=/opt/X11/lib   && make && sudo make install

magic:
	git clone https://github.com/RTimothyEdwards/magic

cmagic: magic
	perl -pe "s/-g/-g -Wno-error=implicit-function-declaration/ig" -i magic/configure
	cd magic && ./configure --prefix=/usr/local/opt2/tcl-tk --with-tcl=/usr/local/opt2/tcl-tk/lib --with-tk=/usr/local/opt2/tcl-tk/lib --x-includes=/opt/X11/include --x-libraries=/opt/X11/lib && make
	cd magic && sudo make install

xschem:
	git clone https://github.com/StefanSchippers/xschem.git

cxschem: xschem
	cd xschem && ./configure --prefix=${INSTALL_PATH}
	perl -ibak -pe "s/CFLAGS/#CFLAGS/ig;s/LDFLAGS/#LDFLAGS/ig" xschem/Makefile.conf
	echo "CFLAGS=-I/opt/X11/include -I/usr/include/cairo/ -I/usr/local/opt2/tcl-tk/include -O2\n LDFLAGS= -L/usr/local/opt2/tcl-tk/lib -L/opt/X11/lib -lm  -lcairo -lX11 -lXrender -lxcb -lxcb-render -lX11-xcb -lXpm -ltcl8.6 -ltk8.6" >> xschem/Makefile.conf
	cd xschem && make
	cd xschem && sudo make install

netgen:
	git clone git@github.com:RTimothyEdwards/netgen.git

cnetgen: netgen
	perl -pe "s/-g/-g -Wno-error=implicit-function-declaration/ig" -i netgen/configure
	cd netgen && ./configure --prefix ${INSTALL_PATH}/ --with-tcl=/usr/local/opt2/tcl-tk/lib --with-tk=/usr/local/opt2/tcl-tk/lib --x-includes=/opt/X11/include --x-libraries=/opt/X11/lib && make && sudo make install

ngspice:
	git clone https://git.code.sf.net/p/ngspice/ngspice ngspice

# Pre-requisites
cngspice: ngspice
	cd ngspice && ./autogen.sh && ./configure \
	--prefix ${INSTALL_PATH}/ \
	--with-x \
	--x-includes=/opt/X11/include \
	--x-libraries=/opt/X11/lib \
	--enable-xspice  \
	--enable-pss \
	--enable-openmp \
	--enable-cider \
	CFLAGS=" -O2 -I/opt/X11/include/freetype2 -I/usr/local/include  " \
	LDFLAGS="-L/usr/local/lib" \
	&& make -j8
	cd ngspice &&  sudo make install


open_pdks:
	git clone https://github.com/RTimothyEdwards/open_pdks

copen_pdks: open_pdks
	cd open_pdks &&	./configure \
	--prefix ${INSTALL_PATH}/ \
	--disable-primitive-gf180mcu \
	--disable-io-gf180mcu \
	--disable-sc-7t5v0-gf180mcu \
	--enable-sky130-pdk \
	--disable-klayout \
	--disable-irsim \
	--disable-openlane \
	--disable-qflow \
	--disable-alpha-sky130 \
	--disable-klayout-sky130 && make
	cd open_pdks && sudo make install
