
cirun:
	docker run --rm   -p 2021:22 -v `pwd`:/home/aicex/ -i wulffern/aicex:24.04_0.1.6 &



SRC=aicex/ip/jnw_ex0_sky130a
SRC_D=${SRC}/design/JNW_EX0_SKY130A
SRC_S=${SRC}/sim/JNW_EX0
DST=aicex/ip/jnw_ex_sky130a
DST_D=${DST}/design/JNW_EX_SKY130A
DST_S=${DST}/sim/JNW_EX

build:
	mkdir build

all: build
	cd build;${MAKE} -f ../Makefile ci


aicex:
	git clone --recursive https://github.com/wulffern/aicex.git

cicconf:
	cd aicex/ip/cicconf && \
	git checkout main && \
	git pull && \
	python3 -m pip install -e . &&\
	cd ../ &&\
	cicconf clone --https
	touch cicconf

newip:
	cd aicex/ip && \
	cicconf newip ex
	touch newip

ex0:
	cd aicex/ip/ && git clone https://github.com/analogicus/jnw_ex0_sky130a.git
	touch ex0

sch:
	cat ${SRC_D}/JNW_EX0.sch > ${DST_D}/JNW_EX.sch
	touch sch

simtyp:
	cat ${SRC_S}/tran.spi | perl -pe "s/EX0/EX/ig;" > ${DST_S}/tran.spi
	cat ${SRC_S}/tran.meas | perl -pe "s/EX0/EX/ig;" > ${DST_S}/tran.meas
	cat ${SRC_S}/tran.yaml | perl -pe "s/EX0/EX/ig;" > ${DST_S}/tran.yaml
	cat ${SRC_S}/tran.py | perl -pe "s/EX0/EX/ig;" > ${DST_S}/tran.py
	cat ${SRC_S}/summary.yaml | perl -pe "s/EX0/EX/ig;" > ${DST_S}/summary.yaml
	cd ${DST_S} && make typical && make summary
	touch simtyp

lay:
	cat ${SRC_D}/JNW_EX0.mag > ${DST_D}/JNW_EX.mag
	cd ${DST}/work && make cdl lvs lpe
	touch lay

simlay:
	cd ${DST_S} && make typical VIEW=Lay && make summary
	touch simlay


simdir:
	cd ${DST}/sim && make cell CELL=JNW_EX
	touch simdir

cicsim:
	cd aicex/ip/cicsim && python3 -m pip install -e .
	touch cicsim

ci: aicex cicconf cicsim newip simdir ex0 sch simtyp lay simlay


clean:
	rm -rf build
