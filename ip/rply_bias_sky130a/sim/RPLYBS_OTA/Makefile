TB=tran
VIEW=Sch
#VIEW=Lay

OPT=

netlist:
	cd ../../work && xschem -q -x -b -s -n ../design/RPLY_BIAS_SKY130A/RPLYBS_OTA.sch
	perl -pi -e "s/\*\*\.subckt/\.subckt/ig;s/\*\*\.ends/\.ends/ig;" ../../work/xsch/RPLYBS_OTA.spice


test:
	${MAKE} typical OPT="Debug"

typical:
	cicsim run ${TB} ${OPT} ${VIEW} Gt Att Tt Vt

slow:
	cicsim run ${TB} ${OPT} ${VIEW} Gt Ass "Th,Tl" Vl

fast:
	cicsim run ${TB} ${OPT} ${VIEW} Gt Aff "Th,Tl" Vh

tfs:
	cicsim run ${TB} ${OPT} ${VIEW} Gt "Att,Ass,Aff" "Tt,Th,Tl" Vt

ttffss:
	cicsim run ${TB} ${OPT} ${VIEW} Gt "Att,Ass,Aff" "Tt" Vt

temp:
	cicsim run ${TB} ${OPT} ${VIEW} Gt "Att" "Tt,Th,Tl" Vt

clean:
	-rm -rf output_*
	-rm -rf __pycache__
	-rm *.run
	-rm *.pdf
	-rm *.csv
