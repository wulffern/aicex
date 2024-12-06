

TAG = 0.1.5

dirs = ip/rply_ex0_sky130nm/sim/RPLY_EX0 \
	ip/rply_ex0_sky130nm/work


cwd = ${shell pwd}

JEKYLL_VERSION=3.8
SITE=${shell pwd}/docs

OPT=

test:

	${foreach d, ${dirs}, cd ${cwd}; cd ${d} && make test|| exit ;}

foss-run:
	docker run -it --rm -p 80:80 -p 5901:5901 --name foss-asic --user $(id -u):$(id -g) -v $(abspath ./):/foss/designs -e VNC_RESOLUTION=1920x1000 efabless/foss-asic-tools:latest bash

foss-sh:
	docker exec -i foss-asic bash

ci:
	docker build -f docker/Dockerfile ${OPT} . -t wulffern/aicex:20.04_latest

ci22:
	docker build -f docker/Dockerfile_22.04 ${OPT} . -t wulffern/aicex:22.04_latest

ci24	:
	docker build -f docker/Dockerfile_24.04 ${OPT} . -t wulffern/aicex:24.04_latest

tagpush:
	docker tag wulffern/aicex:20.04_latest wulffern/aicex:20.4_${TAG}
	docker push wulffern/aicex:20.04_${TAG}

tagpush22:
	docker tag wulffern/aicex:22.04_latest wulffern/aicex:22.04_${TAG}
	docker push wulffern/aicex:22.04_${TAG}
	#docker push wulffern/aicex:22.04_latest wulffern/aicex:latest

cish:
	docker run --rm  -it -p 2021:22 -v `pwd`:/home/aicex/ -i wulffern/aicex:latest bash --login



cirun:
	docker run --rm  -p 2021:22 -v `pwd`:/home/aicex/ -i wulffern/aicex:20.04_latest &

cirun22:
	docker run --rm  -p 2021:22 -v `pwd`:/home/aicex/ -i wulffern/aicex:22.04_latest &

cirun24:
	docker run --rm   -p 2021:22 -v `pwd`:/home/aicex/ -i wulffern/aicex:24.04_latest &

clean:
	cd ip && find ./ -name "*.ext" -exec rm {} \;

jstart:
	docker run --rm --name aicex_docs --volume="${SITE}:/srv/jekyll" -p 3000:4000 -it jekyll/jekyll:${JEKYLL_VERSION} jekyll serve --watch --drafts
