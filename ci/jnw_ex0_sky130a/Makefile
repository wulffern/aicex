


cirun:
	docker run --rm   -p 2022:22 -v `pwd`:/home/aicex/ -i wulffern/aicex:24.04_0.1.6 &


build:
	mkdir build


all: build
	cd build;${MAKE} -f ../Makefile ci


SRC=aicex/ip/jnw_ex0_sky130a
SRC_D=${SRC}/design/JNW_EX0_SKY130A
SRC_S=${SRC}/sim/JNW_EX0
DST=aicex/ip/jnw_ex_sky130a
DST_D=${DST}/design/JNW_EX_SKY130A
DST_S=${DST}/sim/JNW_EX

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

cifclone:
	cd aicex/ip/ && cicconf  clone --https
	touch cifclone

newip:
	cd aicex/ip && \
	cicconf newip ex --project jnw --technology sky130A --ip  tech_sky130A/cicconf/jnw.yaml
	touch newip

ex0:
	cd aicex/ip/ && git clone https://github.com/analogicus/jnw_ex0_sky130a.git
	touch ex0

sch:
	cat ${SRC_D}/JNW_EX0.sch > ${DST_D}/JNW_EX.sch
	touch sch

simtyp:
	cat ../.spiceinit > ~/.spiceinit
	cat ${SRC_S}/tran.spi | perl -pe "s/EX0/EX/ig;" > ${DST_S}/tran.spi
	cat ${SRC_S}/tran.meas | perl -pe "s/EX0/EX/ig;" > ${DST_S}/tran.meas
	cat ${SRC_S}/tran.yaml | perl -pe "s/EX0/EX/ig;" > ${DST_S}/tran.yaml
	cat ${SRC_S}/tran.py | perl -pe "s/EX0/EX/ig;" > ${DST_S}/tran.py
	cat ${SRC_S}/summary.yaml | perl -pe "s/EX0/EX/ig;" > ${DST_S}/summary.yaml
	cd ${DST_S} && make typical && make summary
	touch simtyp

info:
	cat ${SRC}/info.yaml | perl -pe "s/EX0/EX/ig;" > ${DST}/info.yaml
	touch info

lay:
	cat ${SRC_D}/JNW_EX0.mag > ${DST_D}/JNW_EX.mag
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
	cd ${DST}/sim && make cell CELL=JNW_EX
	touch simdir

cicsim:
	cd aicex/ip/cicsim && python3 -m pip install -e .
	touch cicsim

ci: aicex cicconf cifclone cicsim newip simdir ex0 sch simtyp lay simlay info act


clean:
	rm -rf build
