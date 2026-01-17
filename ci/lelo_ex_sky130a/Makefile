



cirun:
	docker run --rm   -p 2021:22 -v `pwd`:/home/aicex/ -i wulffern/aicex:24.04_0.1.6 &


build:
	mkdir build


all: build
	cd build;${MAKE} -f ../Makefile ci


SRC=aicex/ip/lelo_ex0_sky130a
SRC_D=${SRC}/design/LELO_EX_SKY130A
SRC_S=${SRC}/sim/LELO_EX
DST=aicex/ip/lelo_ex_sky130a
DST_D=${DST}/design/LELO_EX_SKY130A
DST_S=${DST}/sim/LELO_EX

UNAME_S := $(shell uname -s)
OS = linux
ifeq ($(UNAME_S),Darwin)
OS = mac
endif




aicex:
	git clone --recursive https://github.com/wulffern/aicex.git

cicconf:
	cd aicex/ip/cicconf && \
	git checkout main && \
	git pull && \
	python3 -m pip install -e .
	touch cicconf

cicpy:
	cd aicex/ip/cicpy && \
	git checkout master && \
	git pull && \
	python3 -m pip install -e .
	cd aicex/ip/cicspi && \
	git checkout main && \
	git pull && \
	python3 -m pip install -e .
	touch cicpy

cifclone:
	cd aicex/ip/ && cicconf  clone --https
	touch cifclone

newip:
	cd aicex/ip && \
	cicconf newip ex --project lelo --technology sky130A --ip  tech_sky130A/cicconf/lelo.yaml
	touch newip

ex0:
	cd aicex/ip/ && git clone https://github.com/wulffern/lelo_ex_sky130a.git lelo_ex0_sky130a

	touch ex0

sch:
	cat ${SRC_D}/LELO_EX.sch > ${DST_D}/LELO_EX.sch
	touch sch

simtyp:
	test ~/.spiceinit || cat ../.spiceinit > ~/.spiceinit
#	cat ../.spiceinit > ~/.spiceinit
	cat ${SRC_S}/tran.spi > ${DST_S}/tran.spi
	cat ${SRC_S}/tran.meas > ${DST_S}/tran.meas
	cat ${SRC_S}/tran.yaml  > ${DST_S}/tran.yaml
	cat ${SRC_S}/tran.py  > ${DST_S}/tran.py
	cat ${SRC_S}/summary.yaml  > ${DST_S}/summary.yaml
	cd ${DST_S} && make typical OPT="--no-sha" && make summary
	touch simtyp

info:
	cat ${SRC}/info.yaml  > ${DST}/info.yaml
	touch info

place:
	cd ${DST}/work && make xsch && cicpy sch2mag LELO_EX_SKY130A LELO_EX
	touch place

lay:
	cat ${SRC_D}/LELO_EX.mag > ${DST_D}/LELO_EX.mag
	cd ${DST}/work && make cdl lvs lpe
	touch lay

act:
ifeq (${OS},mac)
	cd ${DST} && act
else
	echo "No Act support, yet"
endif
	touch act

simlay:
	cd ${DST_S} && make typical VIEW=Lay && make summary
	touch simlay


simdir:
	cd ${DST}/sim && make cell CELL=LELO_EX
	touch simdir

cicsim:
	cd aicex/ip/cicsim && python3 -m pip install -e .
	touch cicsim

ci: aicex cicconf cifclone cicsim  cicpy newip simdir ex0 sch simtyp place lay simlay info


clean:
	rm -rf build
