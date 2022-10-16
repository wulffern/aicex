TB=tran
VIEW=Sch
#VIEW=Lay

OPT=

netlist:
	cd ../../work && xschem -q -x -b -s -n ../design/RPLY_BIAS_SKY130A/RPLY_BIAS.sch
	perl -pi -e "s/\*\*\.subckt/\.subckt/ig;s/\*\*\.ends/\.ends/ig;" ../../work/xsch/RPLY_BIAS.spice

test:
	${MAKE} typical OPT="Debug"

typical: netlist
	cicsim run ${TB} ${OPT} ${VIEW} Gt Att Tt Vt

slow: netlist
	cicsim run ${TB} ${OPT} ${VIEW} Gt Ass "Th,Tl" Vl

fast: netlist
	cicsim run ${TB} ${OPT} ${VIEW} Gt Aff "Th,Tl" Vh

tfs: netlist
	cicsim run ${TB} ${OPT} ${VIEW} Gt "Att,Ass,Aff" "Tt,Th,Tl" "Vt,Vl,Vh"

ttffss: netlist
	cicsim run ${TB} ${OPT} ${VIEW} Gt "Att,Ass,Aff" "Tt" Vt

temp: netlist
	cicsim run ${TB} ${OPT} ${VIEW} Gt "Att" "Tt,Th,Tl" Vt

clean:
	-rm -rf output_*
	-rm -rf __pycache__
	-rm *.run
	-rm *.pdf
	-rm *.csv
