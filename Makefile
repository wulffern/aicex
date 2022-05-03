

dirs = sim/CHAR_GMID sim/SAR9B

cwd = ${shell pwd}


test:
	${foreach d, ${dirs}, cd ${cwd}; cd ${d} && make test ;}
