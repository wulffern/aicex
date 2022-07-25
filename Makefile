

dirs = sim/CHAR_GMID ip/sun_tr_sky130nm/sim/IVX1_CV

cwd = ${shell pwd}


test:
	${foreach d, ${dirs}, cd ${cwd}; cd ${d} && make test ;}
