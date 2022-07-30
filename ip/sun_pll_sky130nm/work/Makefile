
#- Core makefile provides the following commands:
# -----------------------------------------------------------
# ip: generate ../design/<LIB> from ../cic/ip.json
# gds: generate gds/<CELL>.gds
# cdl: generate cdl/<CELL>.cdl
# lvs: Check cdl/<CELL>.cdl versus ../design/<LIB>/<CELL>.mag
# lpe: Extract parasitics lpe/<CELL>.spi
# drc: Run design rule checks on ../design/<LIB>/<CELL>.mag
# -----------------------------------------------------------
include ../../../tech/make/core.make

LIB=SUN_PLL_SKY130NM
CELL=SUN_PLL

CICEXCLUDE="^SUNTR_"

#- Provide cells you want to check for the lvsall drcall commands
CELLS = SUN_PLL

ip:
	cd ${BUILD};${CIC} --nogds --spi --I ../cic ../cic/ip.json  ../cic/sky130.tech ${LIB} ${CICOPT}
	cd ${BUILD}; ${CICPY}  transpile ${LIB}.cic ../cic/sky130.tech ${LIB}  --spice --verilog --magic --smash "(P|N)CHIOA" --exclude "${CICEXCLUDE}"
