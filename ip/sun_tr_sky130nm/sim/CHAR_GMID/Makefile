
TB=idgm
#VIEW=Sch
VIEW=Sch
#VIEW=Ver

OPT=

TBS=idgm_nchdla idgm_pchdla idgm_nchdlcm idgm_pchdlcm idgm_nchl idgm_pchl idgm_nchla idgm_pchla idgm_nchlcm idgm_pchlcm

CORNER=tfs

all:
	${foreach f,${TBS}, make ${CORNER} TB=${f};}

genspi:
	python3 genspi.py

typical:
	cicsim run ${TB} ${OPT} ${VIEW} Gt Att Tt Vt

slow:
	cicsim run ${TB} ${OPT} ${VIEW} Gt Ass "Th,Tl" Vl

fast:
	cicsim run ${TB} ${OPT} ${VIEW} Gt Aff "Th,Tl" Vh

tfs:
	cicsim run ${TB} ${OPT} ${VIEW} Gt "Att,Ass,Aff"  "Tt,Th,Tl" Vt

ttffss:
	cicsim run ${TB} ${OPT} ${VIEW} Gt "Att,Ass,Aff" "Tt" Vt

temp:
	cicsim run ${TB} ${OPT} ${VIEW} Gt "Att" "Tt,Th,Tl" Vt

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
