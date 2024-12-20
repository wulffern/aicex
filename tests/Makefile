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

#---------------------------------------------------------------------
#- GIT repo Versions
#---------------------------------------------------------------------
XSCHEM_VER=master
MAGIC_VER=master
NETGEN_VER=master
NGSPICE_VER=master
IVERILOG_VER=master
YOSYS_VER=main
GTKWAVE_VER=3.3.117
OPENROAD_VER=master


#---------------------------------------------------------------------
#- Variables
#---------------------------------------------------------------------
TK_PREFIX=/opt/eda
EDA_PREFIX=/opt/eda

#-Check OS
UNAME_S := $(shell uname -s)
OS = linux
ifeq ($(UNAME_S),Darwin)
OS = mac
endif

ifeq (${OS},mac)
CC_GCC=gcc-14
CC_GPP=gcc-14
else
CC_GCC=gcc
CC_GPP=g++
endif

VER=$(shell lsb_release -sr)

ifeq (${OS},mac)
	X11_LIB = /usr/X11/lib
	X11_INC = /usr/X11/include
else
	X11_LIB = /usr/lib/X11
	X11_INC = /usr/include/X11
endif



tt:
	make tcl_compile
	make tcl_install
	make tk_compile
	make tk_install


eda_compile:
	make magic_compile
	make xschem_compile
	make netgen_compile
	make iverilog_compile
	make yosys_compile
	-make ngspice_compile
	make ngspice_compile

eda_install:
	make magic_install
	make xschem_install
	make netgen_install
	make ngspice_install
	make iverilog_install
	make yosys_install

clean:
	-rm -rf ${tclver}*
	-rm -rf ${tkver}*
	-rm -rf ngspice
	-rm -rf magic
	-rm -rf xschem*
	-rm -rf netgen
	-rm -rf gtkwave*
	-rm -rf iverilog
	-rm -rf yosys

requirements:
ifeq (${OS},mac)
	brew install xquartz --cask
	brew install libxpm
	brew install bison
	brew install readline
	brew install libomp
	brew install automake
	brew install glib
	brew install cairo
	brew install libxaw
	brew install flex
	brew install tcl-tk
	brew install gcc
	brew install gtk+
	brew install gtk-mac-integration
	brew install libxft
else

	sudo apt update
	sudo test -d /opt || mkdir /opt

ifeq (${VER},24.04)
	sudo apt -y install python3-pip libxft2 libxss1 \
	libxaw7 libcairo2 \
	tcsh flex bison pandoc \
	git vim curl  libx11-dev libxrender1 libxrender-dev \
	libxcb1 libx11-xcb-dev libcairo2 libcairo2-dev \
	tcl8.6 tcl8.6-dev tk8.6 tk8.6-dev libxpm4  \
	xterm vim-gtk3 gawk tcl-tclreadline libxpm-dev automake	libtool libxaw7-dev libreadline-dev gperf \
	xz-utils liblzma-dev libgtk2.0-dev python3-pil.imagetk verilator

else
	sudo apt -y install python3-pip libxft2 libxss1 \
	libxaw7 libcairo2 \
	libgl1-mesa-glx libglu1-mesa \
	tcsh flex bison pandoc \
	git vim curl  libx11-dev libxrender1 libxrender-dev \
	libxcb1 libx11-xcb-dev libcairo2 libcairo2-dev \
	tcl8.6 tcl8.6-dev tk8.6 tk8.6-dev libxpm4  \
	xterm vim-gtk3 gawk tcl-tclreadline libxpm-dev automake	libtool libxaw7-dev libreadline-dev gperf \
	xz-utils liblzma-dev libgtk2.0-dev python3-pil.imagetk

endif
endif

#--------------------------------------------------------------------
# TCL/TK
#--------------------------------------------------------------------
ttver=8.6.10
tclver=tcl${ttver}
tkver=tk${ttver}

#https://downloads.sourceforge.net/project/tcl/Tcl/8.6.10/tk8.6.10-src.tar.gz?ts=gAAAAABmwgzQOV9CsxTKp_oaEBCEZ-XvDrehgbv1M-e8v2mI4m_HoouvHYWfQ6BfOWiGVh1jltOdhhUWrm9wgTYqteFej8QCpg%3D%3D&r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Ftcl%2Ffiles%2FTcl%2F8.6.10%2Ftk8.6.10-src.tar.gz%2Fdownload

${tclver}:
	test -f ${tclver}-src.tar.gz ||wget https://downloads.sourceforge.net/project/tcl/Tcl/${ttver}/${tclver}-src.tar.gz
	tar zxvf ${tclver}-src.tar.gz


tcl_compile: ${tclver}
	cd ${tclver}/unix && \
	./configure --prefix=${TK_PREFIX} && \
	make

tcl_install:
	cd ${tclver}/unix; sudo make install

${tkver}:
	test -f ${tkver}-src.tar.gz || wget https://downloads.sourceforge.net/project/tcl/Tcl/${ttver}/${tkver}-src.tar.gz
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
	cd magic && git checkout ${MAGIC_VER}

magic_compile: magic
#ifeq (${OS},mac)
#	cd magic &&  ./configure CC=${CC_GCC} CXX=${CC_GPP} \
#    --with-tcl=${shell brew --prefix tcl-tk}\
    --with-tk=${shell brew --prefix tcl-tk}\
	--x-includes=${X11_INC} --x-libraries=${X11_LIB} \
	--with-cairo=${X11_INC}/cairo  --with-opengl=${X11_LIB} \
    --prefix=${TK_PREFIX}  && \
	make database/database.h && \
	make
#else
#
ifeq (${VER},24.04)
	perl -pe "s/-g/-g -Wno-error=implicit-function-declaration/ig" -i magic/configure
	cd magic && ./configure CC=${CC_GCC} CXX=${CC_GPP}  --prefix=${TK_PREFIX} --with-tcl=${TK_PREFIX}/lib \
	--with-tk=${TK_PREFIX}/lib --x-includes=${X11_INC} --x-libraries=${X11_LIB} \
	--with-cairo=${X11_INC}/cairo  --with-opengl=${X11_LIB} && \
	make
else
	perl -pe "s/-g/-g -Wno-error=implicit-function-declaration/ig" -i magic/configure
	cd magic && ./configure CC=${CC_GCC} CXX=${CC_GPP}  --prefix=${TK_PREFIX} --with-tcl=${TK_PREFIX}/lib \
	--with-tk=${TK_PREFIX}/lib --x-includes=${X11_INC} --x-libraries=${X11_LIB} \
	--with-cairo=${X11_INC}/cairo  --with-opengl=${X11_LIB} && \
	make
endif

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
	cd xschem && git checkout ${XSCHEM_VER}

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
	cd netgen && git checkout ${NETGEN_VER}

netgen_compile: netgen
ifeq (${OS},mac)
	perl -pe "s/-g/-g -Wno-error=implicit-function-declaration/ig" -i netgen/configure
	cd netgen && ./configure --prefix ${EDA_PREFIX}/ --with-tclincls=${TK_PREFIX}/include --with-tkincls=${TK_PREFIX}/include --with-tcl=${TK_PREFIX}/lib \
	--with-tk=${TK_PREFIX}/lib --x-includes=${X11_INC} --x-libraries=${X11_LIB}&& \
	make
else
	cd netgen && ./configure --prefix ${EDA_PREFIX}/ && make
endif

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
	cd ngspice && git checkout ${NGSPICE_VER}

# Need to use gcc-11 or gcc-12 from homebrew to get openmp to work
ngspice_compile: ngspice
ifeq (${OS},mac)
	-cd ngspice && glibtoolize && ./autogen.sh && ./configure \
	--prefix ${EDA_PREFIX}/ \
	--with-x \
	--x-includes=${X11_INC} \
	--x-libraries=${X11_LIB} \
	--enable-xspice  \
	--enable-openmp \
	--enable-pss \
	--enable-cider \
	CC=${CC_GCC} CXX=${CC_GPP} \
	--with-readline=/usr/local/opt/readline \
	--disable-debug \
	CFLAGS=" -O2 -I${X11_INC}/freetype2 -I/usr/local/include -I/usr/local/opt/readline/include " \
	LDFLAGS=" -L/usr/local/opt/bison/lib -L/usr/local/opt/readline/lib -L/usr/local/opt/ncurses/lib -L/usr/local/lib -L/usr/local/opt/libomp/lib/ -fopenmp -lomp"
else
	-cd ngspice && libtoolize && ./autogen.sh && ./configure \
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
	-cd ngspice  && make -j4


ngspice_install:
	cd ngspice &&  sudo make install


#--------------------------------------------------------------------
# icarus verilog
#--------------------------------------------------------------------
iverilog:
	git clone https://github.com/steveicarus/iverilog.git
	cd iverilog && git checkout ${IVERILOG_VER}

iverilog_compile: iverilog
	cd iverilog && git pull && \
	sh autoconf.sh && ./configure --prefix ${EDA_PREFIX} && make

iverilog_install:
	cd iverilog && sudo make install


#--------------------------------------------------------------------
# yosys
#--------------------------------------------------------------------
yosys:
	git clone --recursive https://github.com/YosysHQ/yosys.git
	cd yosys && git checkout ${YOSYS_VER}

yosys_compile: yosys
	cd yosys && git pull && make config-gcc PREFIX=${EDA_PREFIX} \
	&& make -j 8 PREFIX=${EDA_PREFIX}

yosys_install:
	cd yosys && sudo make PREFIX=${EDA_PREFIX} install

#--------------------------------------------------------------------
# GTKWave
#--------------------------------------------------------------------
gtkwave:
	wget http://gtkwave.sourceforge.net/gtkwave-${GTKWAVE_VER}.tar.gz
	tar zxvf gtkwave-${GTKWAVE_VER}.tar.gz
	ln -s gtkwave-${GTKWAVE_VER} gtkwave

gtkwave_compile: gtkwave
ifeq (${OS},mac)
	cd gtkwave && export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig/ &&./configure --prefix ${EDA_PREFIX} --disable-tcl --disable-xy && make
else
	cd gtkwave && ./configure --prefix ${EDA_PREFIX} --disable-tcl --disable-xy && make
endif

gtkwave_install:
	cd gtkwave && sudo make install

#--------------------------------------------------------------------
# OpenRoad
#--------------------------------------------------------------------
OpenROAD:
	git clone --recursive https://github.com/The-OpenROAD-Project/OpenROAD.git
	cd OpenROAD && git checkout ${OPENROAD_VER}
	cd OpenROAD && ./etc/DependencyInstaller.sh -base
	cd OpenROAD && ./etc/DependencyInstaller.sh -common -prefix=${EDA_PREFIX}

openroad_compile: OpenROAD
	-cd OpenROAD && mkdir build
	cd OpenROAD/build && export PATH="$(brew --prefix bison)/bin:$(brew --prefix flex)/bin:$(brew --prefix tcl-tk)/bin:${PATH}" && \
    export CMAKE_PREFIX_PATH=$(shell brew --prefix or-tools) && \
		cmake .. -DCMAKE_INSTALL_PREFIX=${EDA_PREFIX} && make

openroad_install:
	cd OpenROAD && make install


#--------------------------------------------------------------------
# XYCE
#--------------------------------------------------------------------
trilinos:
	git clone git@github.com:trilinos/Trilinos.git

xyce:
	git clone git@github.com:Xyce/Xyce.git

xyce_compile: trilinos xyce
	./compile_xyce.sh
