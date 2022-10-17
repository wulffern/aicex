

TAG = 0.1.0

dirs = 	ip/sun_tr_sky130nm/work \
	ip/sun_trb_sky130nm/work \
	ip/sun_sar9b_sky130nm/work \
	ip/sun_tr_sky130nm/sim/IVX1_CV

cwd = ${shell pwd}


test:
	${foreach d, ${dirs}, cd ${cwd}; cd ${d} && make test|| exit ;}



foss-run:
	docker run -it --rm -p 80:80 -p 5901:5901 --name foss-asic --user $(id -u):$(id -g) -v $(abspath ./):/foss/designs -e VNC_RESOLUTION=1920x1000 efabless/foss-asic-tools:latest bash

foss-sh:
	docker exec -i foss-asic bash

ci:
	docker build -f docker/Dockerfile . -t wulffern/aicex:latest

tagpush:
	#docker tag wulffern/aicex:latest wulffern/aicex:${TAG}
	#docker push wulffern/aicex:${TAG}
	docker push wulffern/aicex:latest

cish:
	docker run --rm  -it -p 2022:22 -v `pwd`:/home/aicex/ -i wulffern/aicex:latest bash --login

cirun:
	docker run --rm  -p 2022:22 -v `pwd`:/home/aicex/ -i wulffern/aicex:latest &

clean:
	cd ip && find ./ -name "*.ext" -exec rm {} \;
