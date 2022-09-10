

dirs = ip/sun_tr_sky130nm/sim/CHAR_GMID ip/sun_tr_sky130nm/sim/IVX1_CV

cwd = ${shell pwd}


test:
	${foreach d, ${dirs}, cd ${cwd}; cd ${d} && make test ;}



foss-run:
	docker run -it --rm -p 80:80 -p 5901:5901 --name foss-asic --user $(id -u):$(id -g) -v $(abspath ./):/foss/designs -e VNC_RESOLUTION=1920x1000 efabless/foss-asic-tools:latest bash

foss-sh:
	docker exec -i foss-asic bash

ci:
	docker build -f Dockerfile .


cish:
	docker run --rm -it -i wulffern/aicex bash --login
