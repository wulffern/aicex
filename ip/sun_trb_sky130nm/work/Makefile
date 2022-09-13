
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

PREFIX=
LIB=SUN_TRB_SKY130NM
CELL=DFRNQNX1_CV
PREFIX=SUNTRB_

#- Provide cells you want to check for the lvsall drcall commands
CELLS = DFRNQNX1_CV

test:
	make ip
	make drcall
	make lvsall
