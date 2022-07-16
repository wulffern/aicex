######################################################################
##        Copyright (c) 2022 Carsten Wulff Software, Norway
## ###################################################################
## Created       : wulff at 2022-4-27
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


#- Things to remember


LIB=SUN_SAR9B_SK130NM
CELL=SAR9B_CV
BUILD=build
PDKPATH=${PDK_ROOT}/sky130A

CIC=~/pro/cic/ciccreator/bin/cic
CICPY = python3 ~/pro/cicpy/cicpy/cic.py

dirs:
	-mkdir clvs
	-mkdir cdrc

all: sar bssw

sar:
	-mkdir build
	cd build;${CIC} --nogds --spi  --I ../cic ../cic/SAR9B_CV.json  ../cic/sky130.tech ${LIB}
	cd build; ${CICPY}  transpile ${LIB}.cic ../cic/sky130.tech ${LIB}  --spice --verilog --xschem --magic --smash "(P|N)CHIOA"

sch:
	cd build; ${CICPY}  transpile ${LIB}.cic ../cic/sky130.tech ${LIB}  --xschem --smash "(P|N)CHIOA"

magic:
	cd build; ${CICPY}  transpile ${LIB}.cic ../cic/sky130.tech ${LIB}  --magic --smash "(P|N)CHIOA"

#----------------------------------------------------------------------------
# POSTCHECK
#----------------------------------------------------------------------------

NCELL=build/${LIB}/mag/${CELL}
MCELL=${NCELL}.mag

lvs:
	echo "set VDD AVDD\nset GND AVSS\nset SUB AVSS\nload ${NCELL}.mag\nextract all\next2spice lvs\next2spice subcircuits off\next2spice -o clvs/${CELL}_lvs.spi\nquit" > clvs/${CELL}_lvs.tcl
	magic -noconsole -dnull clvs/${CELL}_lvs.tcl
	netgen -batch lvs "clvs/${CELL}_lvs.spi ${CELL}"  "${BUILD}/${LIB}.spi ${CELL}" ${PDKPATH}/libs.tech/netgen/sky130A_setup.tcl clvs/${CELL}_lvs.log

drc:
	echo "load ${NCELL}.mag\nlogcommands cdrc/${CELL}_drc.log\ndrc catchup\ndrc count\ndrc why\nquit\n" > cdrc/${CELL}_drc.tcl
	magic -noconsole -dnull cdrc/${CELL}_drc.tcl

#----------------------------------------------------------------------------
# SIM
#----------------------------------------------------------------------------

bssw:
	${MAKE} typical TB=tran_bssw
	python3 plot_bssw.py tran_bssw_SchGtMttRtCtTtVtDtBt.run  plot

cap:
	${MAKE} typical TB=tran_bssw_cap


cmp:
	${MAKE} typical TB=tran_bssw_cmp

test:
	${MAKE} typical TB=tran_bssw
	python3 plot_bssw.py tran_bssw_SchGtMttRtCtTtVtDtBt.run


TB=tran
#VIEW=Sch
VIEW=Sch
#VIEW=Ver

OPT=


typical:
	cicsim runng ${TB} ${OPT} ${VIEW} Gt Mtt Rt Ct Tt Vt Dt Bt

slow:
	cicsim runng ${TB} ${OPT} ${VIEW} Gt Mss Rh Ch Bf Df "Th,Tl" Vl

fast:
	cicsim runng ${TB} ${OPT} ${VIEW} Gt Mff Rl Cl Bs Ds "Th,Tl" Vh

tfs:
	cicsim runng ${TB} ${OPT} ${VIEW} Gt "Mtt,Mss,Mff" Rl Cl Bs Ds "Tt,Th,Tl" Vt

ttffss:
	cicsim runng ${TB} ${OPT} ${VIEW} Gt "Mtt,Mss,Mff" Rl Cl Bs Ds "Tt" Vt

temp:
	cicsim runng ${TB} ${OPT} ${VIEW} Gt "Mtt" Rl Cl Bs Ds "Tt,Th,Tl" Vt

doc:
	pandoc -s README.md -o README.html

clean:
	-rm -rf build
	-rm -rf clvs cdrc
	-rm *.ext
	-rm -rf output_*
	-rm -rf __pycache__
	-rm *.run
	-rm *.pdf
	-rm *.csv
