
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


LIB=SUN_TR_SK130NM
CELL=SUN_TR
BUILD=build
PDKPATH=${PDK_ROOT}/sky130A

CIC=~/pro/cic/ciccreator/bin/cic
CICPY = python3 ~/pro/cicpy/cicpy/cic.py

dirs:
	-mkdir clvs
	-mkdir cdrc
	-mkdir clpe

sun:
	-mkdir build
	cd build;${CIC} --nogds  --I ../cic ../cic/SUN_TR.json  ../cic/sky130.tech ${LIB}
	cd build; ${CICPY} transpile ${LIB}.cic ../cic/sky130.tech ${LIB}  --spice --verilog --xschem --magic --smash "(P|N)CHIOA"



#----------------------------------------------------------------------------
# REGRESSION
#----------------------------------------------------------------------------

blocks = SUN_TR NCHDLA PCHDLA PCHDLCM NCHDLCM NCHDLCM2 PCHDLCM2 CPCHDLCM2 CNCHDLCM2 RG12TRIX1_CV

lvsblocks:
	${foreach b, ${blocks}, make lvsf CELL=$b;}

drcblocks:
	${foreach  b, ${blocks}, make drc CELL=$b;}


#----------------------------------------------------------------------------
# VERIFICATION
#----------------------------------------------------------------------------

NCELL=build/${LIB}/mag/${CELL}
MCELL=${NCELL}.mag

lvsf:

	@echo "set VDD AVDD\nset GND AVSS\nset SUB BULKN\nload ${NCELL}.mag\nextract all\n\next2spice lvs\next2spice hierarchy off\next2spice subcircuits off\next2spice -o clvs/${CELL}_lvs.spi\nquit" > clvs/${CELL}_lvs.tcl
	@magic -noconsole -dnull clvs/${CELL}_lvs.tcl 2&>1 > clvs/${CELL}_magic_lvs.log
	@netgen -batch lvs "clvs/${CELL}_lvs.spi ${CELL}"  "${BUILD}/${LIB}.spi ${CELL}" ${PDKPATH}/libs.tech/netgen/sky130A_setup.tcl clvs/${CELL}_lvs.log > clvs/${CELL}_netgen_lvs.log
	@tail -n 1 clvs/${CELL}_lvs.log|perl -ne "use Term::ANSIColor;print(sprintf(\"%-40s\t[ \",${CELL}));if(m/match uniquely/ig){print(color('green').'LVS OK  '.color('reset'));}else{print(color('red').'LVS FAIL'.color('reset'));};print(\" ]\n\");"

lvs:
	#echo "load ${NCELL}.mag\nextract all\nextract no capacitance\nextract no resistance\n\next2spice lvs\next2spice subcircuits off\next2spice -o clvs/${CELL}_lvs.spi\nquit" > clvs/${CELL}_lvs.tcl
	#echo "set VDD AVDD\nset GND AVSS\nset SUB BULKN\nload ${NCELL}.mag\nextract all\n\next2spice lvs\next2spice hierarchy off\next2spice subcircuits off\next2spice -o clvs/${CELL}_lvs.spi\nquit" > clvs/${CELL}_lvs.tcl
	echo "set VDD AVDD\nset GND AVSS\nset SUB BULKN\nload ${NCELL}.mag\nextract all\n\next2spice lvs\next2spice subcircuits off\next2spice -o clvs/${CELL}_lvs.spi\nquit" > clvs/${CELL}_lvs.tcl
	magic -noconsole -dnull clvs/${CELL}_lvs.tcl
	netgen -batch lvs "clvs/${CELL}_lvs.spi ${CELL}"  "${BUILD}/${LIB}.spi ${CELL}" ${PDKPATH}/libs.tech/netgen/sky130A_setup.tcl clvs/${CELL}_lvs.log

drc:
	@echo "load ${NCELL}.mag\nlogcommands cdrc/${CELL}_drc.log\nset b [view bbox]\nbox values [lindex \$$b 0] [lindex \$$b 1] [lindex \$$b 2] [lindex \$$b 3]\ndrc catchup\ndrc why\ndrc count total\nquit\n" > cdrc/${CELL}_drc.tcl
	@magic -noconsole -dnull cdrc/${CELL}_drc.tcl 2&>1 > cdrc/${CELL}_drc.log
	@tail -n 1 cdrc/${CELL}_drc.log|perl -ne "\$$exit = 0;use Term::ANSIColor;print(sprintf(\"%-40s\t[ \",${CELL}));if(m/:\s+0\n/ig){print(color('green').'DRC OK  '.color('reset'));}else{print(color('red').'DRC FAIL'.color('reset'));\$$exit = 1;};print(\" ]\n\");exit \$$exit;" || tail -n 10 cdrc/${CELL}_drc.log

lpe:
	@echo "set VDD AVDD\nset GND AVSS\nset SUB BULKN\nload ${NCELL}.mag\nextract all\n\next2spice resistor off\next2spice capacitance on\next2spice hierarchy off\next2spice subcircuits off\next2spice -o clpe/${CELL}_lpe.spi\nquit" > clpe/${CELL}_lpe.tcl
	@magic -noconsole -dnull clpe/${CELL}_lpe.tcl 2&>1 | tee clpe/${CELL}_magic_lpe.log


TB=ivx1
VIEW=Sch
#VIEW=Lay
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
