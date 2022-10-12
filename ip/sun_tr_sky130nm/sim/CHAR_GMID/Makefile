
TB=idgm
#VIEW=Sch
VIEW=Sch
#VIEW=Ver

OPT=

all:
	make tfs TB=idgm_nchdla
	make tfs TB=idgm_nchdl
	make tfs TB=idgm_nchdlcm
	make tfs TB=idgm_pchdla
	make tfs TB=idgm_pchdl
	make tfs TB=idgm_pchdlcm


typical:
	cicsim runng ${TB} ${OPT} ${VIEW} Gt Att Tt Vt

slow:
	cicsim runng ${TB} ${OPT} ${VIEW} Gt Ass "Th,Tl" Vl

fast:
	cicsim runng ${TB} ${OPT} ${VIEW} Gt Aff "Th,Tl" Vh

tfs:
	cicsim runng ${TB} ${OPT} ${VIEW} Gt "Att,Ass,Aff"  "Tt,Th,Tl" Vt

ttffss:
	cicsim runng ${TB} ${OPT} ${VIEW} Gt "Att,Ass,Aff" "Tt" Vt

temp:
	cicsim runng ${TB} ${OPT} ${VIEW} Gt "Att" "Tt,Th,Tl" Vt

tfsp:
	python3 plot_idgm.py ${TB}_${VIEW}GtAttAssAffTtThTlVt.run ${OPT}

test:
	${MAKE} tfs tfsp

clean:
	-rm -rf output_*
	-rm -rf __pycache__
	-rm *.run
	-rm *.pdf
	-rm *.csv
