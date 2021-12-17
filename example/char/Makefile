
TB=idgm
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
	${MAKE} typical slow fast

plotall:
	python3 plot_idgm.py


test:
	${MAKE} tfs plotall
