

dirs = 	ip/sun_tr_sky130nm/work \
	ip/sun_trb_sky130nm/work \
	ip/sun_sar9b_sky130nm/work \
	ip/sun_pll_sky130nm/work \
	ip/sun_tr_sky130nm/sim/IVX1_CV

cwd = ${shell pwd}


test:
	${foreach d, ${dirs}, cd ${cwd}; cd ${d} && make test ;}



foss-run:
	docker run -it --rm -p 80:80 -p 5901:5901 --name foss-asic --user $(id -u):$(id -g) -v $(abspath ./):/foss/designs -e VNC_RESOLUTION=1920x1000 efabless/foss-asic-tools:latest bash

foss-sh:
	docker exec -i foss-asic bash

ci:
	docker build -f Dockerfile . -t wulffern/aicex


cish:
	docker run --rm -it -i wulffern/aicex bash --login

clean:
	cd ip && find ./ -name "*.ext" -exec rm {} \;
	cd models && find ./ -name "*.svg" -exec rm {} \;
	cd models && find ./ -name "*.data" -exec rm {} \;
	cd models && find ./ -name "*.json" -exec rm {} \;
	cd models && find ./ -name "*.lef" -exec rm {} \;
	cd models && find ./ -name "*.gds" -exec rm {} \;
