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

LIB=SUN_SAR9B_SK130NM
CELL=SAR9B_CV

CIC=~/pro/cic/ciccreator/bin/cic
CICPY = python3 ~/pro/cicpy/cicpy/cic.py

all: sar bssw

sar:
	-mkdir build
	cd build;${CIC} --nogds --I ../cic ../cic/SAR9B_CV.json  ../cic/sky130.tech ${LIB}
	cd build; ${CICPY}  transpile ${LIB}.cic ../cic/sky130.tech ${LIB}  --spice --verilog --smash "(P|N)CHIOA"



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



clean:
	rm -rf build
	-rm -rf output_*
	-rm -rf __pycache__
	-rm *.run
	-rm *.pdf
	-rm *.csv
