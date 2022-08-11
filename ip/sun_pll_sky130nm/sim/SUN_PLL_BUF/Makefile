

TB=tran
VIEW=Sch
#VIEW=Lay

OPT=

test:
	${MAKE} typical OPT="Debug"

typical:
	cicsim runng ${TB} ${OPT} ${VIEW} Gt Att Tt Vt

slow:
	cicsim runng ${TB} ${OPT} ${VIEW} Gt Ass "Th,Tl" Vl

fast:
	cicsim runng ${TB} ${OPT} ${VIEW} Gt Aff "Th,Tl" Vh

tfs:
	cicsim runng ${TB} ${OPT} ${VIEW} Gt "Att,Ass,Aff" "Tt,Th,Tl" Vt

ttffss:
	cicsim runng ${TB} ${OPT} ${VIEW} Gt "Att,Ass,Aff" "Tt" Vt

temp:
	cicsim runng ${TB} ${OPT} ${VIEW} Gt "Att" "Tt,Th,Tl" Vt

clean:
	-rm -rf output_*
	-rm -rf __pycache__
	-rm *.run
	-rm *.pdf
	-rm *.csv
