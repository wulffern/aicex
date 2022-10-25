
#- Core makefile provides the following commands
# ip: generate ../design/<LIB> from ../cic/ip.json
# gds: generate gds/<CELL>.gds
# cdl: generate cdl/<CELL>.cdl
# lvs: Check cdl/<CELL>.cdl versus ../design/<LIB>/<CELL>.mag
# lpe: Extract parasitics lpe/<CELL>.spi
# drc: Run design rule checks on ../design/<LIB>/<CELL>.mag
include ../tech/make/core.make

LIB=SUN_TR_SKY130NM
CELL=SUN_TR
PREFIX=SUNTR_
#- Provide cells you want to check for the lvsall drcall commands
CELLS = SUN_TR NCHDL PCHDL PCHL NCHL NCHDLA PCHDLA PCHDLCM NCHDLCM NCHLA PCHLA PCHLCM NCHLCM NCHDLCM2 PCHDLCM2 CPCHDLCM2 CNCHDLCM2 RG12TRIX1_CV

test:
	make ip
	make drcall
	make lvsall
