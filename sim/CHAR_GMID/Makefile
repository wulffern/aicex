
TB=idgm_lvt
#VIEW=Sch
VIEW=Sch
#VIEW=Ver

OPT=

all:
	make tfs tfsp TB=idgm_lvt OPT=${OPT}
	make tfs tfsp TB=idgm OPT=${OPT}

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

tfsp:
	python3 plot_idgm.py ${TB}_${VIEW}GtMttMssMffRlClBsDsTtThTlVt.run ${OPT}


test:
	${MAKE} tfs tfsp

clean:
	-rm -rf output_*
	-rm -rf __pycache__
	-rm *.run
	-rm *.pdf
	-rm *.csv
