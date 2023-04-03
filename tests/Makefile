######################################################################
##        Copyright (c) 2022 Carsten Wulff Software, Norway
## ###################################################################
## Created       : wulff at 2022-12-28
## ###################################################################
##  The MIT License (MIT)
##
##  Permission is hereby granted, free of charge, to any person obtaining a copy
##  of this software and associated documentation files (the "Software"), to deal
##  in the Software without restriction, including without limitation the rights
##  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
##  copies of the Software, and to permit persons to whom the Software is
##  furnished to do so, subject to the following conditions:
##
##  The above copyright notice and this permission notice shall be included in all
##  copies or substantial portions of the Software.
##
##  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
##  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
##  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
##  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
##  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
##  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
##  SOFTWARE.
##
######################################################################

TK_PREFIX=/opt/eda
EDA_PREFIX=/opt/eda

#-Check OS
UNAME_S := $(shell uname -s)
OS = linux
ifeq ($(UNAME_S),Darwin)
OS = mac
endif


ifeq (${OS},mac)
	X11_LIB = /opt/X11/lib
	X11_INC = /opt/X11/include
else
	X11_LIB = /usr/lib/X11
	X11_INC = /usr/include/X11
endif



tt: tcl_compile tcl_install \
	tk_compile tk_install


eda_compile: magic_compile \
	xschem_compile \
	netgen_compile \
	ngspice_compile \
	ngspice_compile

eda_install: magic_install \
	xschem_install \
	netgen_install \
	ngspice_install

clean:
	rm -rf ${tclver}*
	rm -rf ${tkver}*
	rm -rf ngspice
	rm -rf magic
	rm -rf xschem*
	rm -rf netgen

requirements:
ifeq (${OS},mac)
	brew install xquartz --cask
	brew install libxpm
	brew install bison
	brew install readline
	brew install libomp
	brew install automake
	brew install glib
	brew install libxaw
	brew install flex
#libxft really creates issues it seems
	brew uninstall libxft
else
	sudo apt update
	sudo mkdir /opt
	sudo apt -y install python3-pip libxft2 libxss1 \
	libgl1-mesa-glx libglu1-mesa libxaw7 libcairo2 \
	tcsh flex bison \
	git vim curl  libx11-dev libxrender1 libxrender-dev \
	libxcb1 libx11-xcb-dev libcairo2 libcairo2-dev \
	tcl8.6 tcl8.6-dev tk8.6 tk8.6-dev libxpm4  \
	xterm vim-gtk3 gawk tcl-tclreadline libxpm-dev automake	libtool libxaw7-dev libreadline-dev
endif

#--------------------------------------------------------------------
# TCL/TK
#--------------------------------------------------------------------
ttver=8.6
tclver=tcl${ttver}.10
tkver=tk${ttver}.10


${tclver}:
	wget https://prdownloads.sourceforge.net/tcl/${tclver}-src.tar.gz
	tar zxvf ${tclver}-src.tar.gz


tcl_compile: ${tclver}
	cd ${tclver}/unix && \
	./configure --prefix=${TK_PREFIX} && \
	make

tcl_install:
	cd ${tclver}/unix; sudo make install

${tkver}:
	wget https://prdownloads.sourceforge.net/tcl/${tkver}-src.tar.gz
	tar zxvf ${tkver}-src.tar.gz


tk_compile: ${tkver}
	cd ${tkver}/unix && \
	./configure --prefix=${TK_PREFIX} \
	--with-tcl=${TK_PREFIX}/lib \
	--with-x --x-includes=${X11_INC} --x-libraries=${X11_LIB}   && \
	make

tk_install:
	cd ${tkver}/unix; sudo make install
ifeq (${OS},mac)
	cd ${TK_PREFIX}/bin/ && \
	sudo install_name_tool -change ${TK_PREFIX}/lib:${X11_LIB}/libtk${ttver}.dylib \
	${TK_PREFIX}/lib/libtk${ttver}.dylib wish${ttver}
endif

#--------------------------------------------------------------------
# MAGIC
#--------------------------------------------------------------------

magic:
	git clone https://github.com/RTimothyEdwards/magic

magic_compile: magic
	perl -pe "s/-g/-g -Wno-error=implicit-function-declaration/ig" -i magic/configure
	cd magic && ./configure --prefix=${TK_PREFIX} --with-tcl=${TK_PREFIX}/lib \
	--with-tk=${TK_PREFIX}/lib --x-includes=${X11_INC} --x-libraries=${X11_LIB} && \
	make

magic_install:
	cd magic && sudo make install
ifeq (${OS},mac)
	sudo install_name_tool -change ${TK_PREFIX}/lib:${X11_LIB}/libtk${ttver}.dylib ${TK_PREFIX}/lib/libtk${ttver}.dylib ${TK_PREFIX}/lib/magic/tcl/magicexec
endif

#--------------------------------------------------------------------
# XSchem
#--------------------------------------------------------------------

xschem:
	git clone https://github.com/StefanSchippers/xschem.git


xschem_compile: xschem
	cd xschem && ./configure --prefix=${EDA_PREFIX}

ifeq (${OS},mac)
	perl -ibak -pe "s/CFLAGS/#CFLAGS/ig;s/LDFLAGS/#LDFLAGS/ig" xschem/Makefile.conf
	echo "CFLAGS=-I${X11_INC} -I${X11_INC}/cairo -I${TK_PREFIX}/include -O2\n LDFLAGS= -L${TK_PREFIX}/lib -L${X11_LIB} -lm -ljpeg -lcairo  -lX11 -lXrender -lxcb -lxcb-render -lX11-xcb -lXpm -ltcl8.6 -ltk8.6" >> xschem/Makefile.conf
endif

	cd xschem && make


xschem_install:
	cd xschem && sudo make install
ifeq (${OS},mac)
	sudo install_name_tool -change ${TK_PREFIX}/lib:${X11_LIB}/libtk${ttver}.dylib \
	${TK_PREFIX}/lib/libtk${ttver}.dylib ${EDA_PREFIX}/bin/xschem
endif
#--------------------------------------------------------------------
# Netgen
#--------------------------------------------------------------------

netgen:
	git clone https://github.com/RTimothyEdwards/netgen.git

netgen_compile: netgen
	perl -pe "s/-g/-g -Wno-error=implicit-function-declaration/ig" -i netgen/configure
	cd netgen && ./configure --prefix ${EDA_PREFIX}/ --with-tcl=${TK_PREFIX}/lib \
	--with-tk=${TK_PREFIX}/lib --x-includes=${X11_INC} --x-libraries=${X11_LIB} && \
	make

netgen_install:
	cd netgen && sudo make install
ifeq (${OS},mac)
	sudo install_name_tool -change ${TK_PREFIX}/lib:${X11_LIB}/libtk${ttver}.dylib \
	${TK_PREFIX}/lib/libtk${ttver}.dylib ${EDA_PREFIX}/lib/netgen/tcl/netgenexec
endif
#--------------------------------------------------------------------
# ngspice
#--------------------------------------------------------------------

ngspice:
	git clone https://git.code.sf.net/p/ngspice/ngspice ngspice

# Need to use gcc-11 or gcc-12 from homebrew to get openmp to work
ngspice_compile: ngspice
ifeq (${OS},mac)
	cd ngspice && glibtoolize && ./autogen.sh && ./configure \
	--prefix ${EDA_PREFIX}/ \
	--with-x \
	--x-includes=${X11_INC} \
	--x-libraries=${X11_LIB} \
	--enable-xspice  \
	--enable-openmp \
	--enable-pss \
	--enable-cider \
	CC="gcc-12" CXX="g++-12" \
	--with-readline=/usr/local/opt/readline \
	--disable-debug \
	CFLAGS=" -O2 -I${X11_INC}/freetype2 -I/usr/local/include -I/usr/local/opt/readline/include " \
	LDFLAGS=" -L/usr/local/opt/bison/lib -L/usr/local/opt/readline/lib -L/usr/local/opt/ncurses/lib -L/usr/local/lib -L/usr/local/opt/libomp/lib/ -fopenmp -lomp"
else
	cd ngspice && libtoolize && ./autogen.sh && ./configure \
	--prefix ${EDA_PREFIX}/ \
	--with-x \
	--x-includes=/usr/include/X11 \
	--x-libraries=/usr/lib/X11 \
	--enable-xspice  \
	--enable-openmp \
	--enable-pss \
	--enable-cider \
	--with-readline=yes \
	--disable-debug	&& CFLAGS="-g -m64 -O0 -Wall -Wno-unused-but-set-variable" LDFLAGS="-m64 -g"
endif
	cd ngspice  && make -j4


ngspice_install:
	cd ngspice &&  sudo make install
