
#- Core makefile provides the following commands:
# -----------------------------------------------------------
# ip: generate ../design/<LIB> from ../cic/ip.json
# gds: generate gds/<CELL>.gds
# cdl: generate cdl/<CELL>.cdl
# lvs: Check cdl/<CELL>.cdl versus ../design/<LIB>/<CELL>.mag
# lpe: Extract parasitics lpe/<CELL>.spi
# drc: Run design rule checks on ../design/<LIB>/<CELL>.mag
# -----------------------------------------------------------
include ../tech/make/core.make

LIB=SUN_PLL_SKY130NM
CELL=SUN_PLL



PREFIX=

CICEXCLUDE="^(${PREFIX}SUNTRB?_|${PREFIX}SUNSAR_)"
#CICVIEWS = --spice --verilog --magic --xschem

#- Provide cells you want to check for the lvsall drcall commands
CELLS = SUN_PLL_BIAS SUN_PLL_CP SUN_PLL_DIVN SUN_PLL_KICK SUN_PLL_LPF SUN_PLL_PFD SUN_PLL_ROSC


test:
	make spi ip CELL=SUN_PLL
	make drcall
	make lvsall
