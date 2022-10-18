TB=dc
VIEW=Sch
#VIEW=Lay
CELL=RPLYBS_OTA
OPT=

netlist:
	cd ../../work && xschem -q -x -b -s -n ../design/RPLY_BIAS_SKY130A/${CELL}.sch
	perl -pi -e "s/\*\*\.subckt/\.subckt/ig;s/\*\*\.ends/\.ends/ig;" ../../work/xsch/${CELL}.spice


test:
	${MAKE} typical OPT="Debug"

typical: netlist
	cicsim run ${TB} ${OPT} ${VIEW} Gt Vct Att Tt Vt

slow: netlist
	cicsim run ${TB} ${OPT} ${VIEW} Gt Vct Ass "Th,Tl" Vl

fast: netlist
	cicsim run ${TB} ${OPT} ${VIEW} Gt Vct Aff "Th,Tl" Vh

tfs: netlist
	cicsim run ${TB} ${OPT} ${VIEW} Gt Vct "Att,Ass,Aff" "Tt,Th,Tl" Vt

ttffss: netlist
	cicsim run ${TB} ${OPT} ${VIEW} Gt Vct "Att,Ass,Aff" "Tt" Vt

temp: netlist
	cicsim run ${TB} ${OPT} ${VIEW} Gt Vct "Att" "Tt,Th,Tl" Vt

clean:
	-rm -rf output_*
	-rm -rf __pycache__
	-rm *.run
	-rm *.pdf
	-rm *.csv
