
IP=TEST_IP

IPS = sun_tr_sky130nm \
sun_trb_sky130nm \
sun_sar9b_sky130nm \
sun_pll_sky130nm

PWD=$(shell pwd)

newip:
	cicsim ip ${IP} ../tech/cicsim/module_template.yaml --src sun_sar9b_sky130nm

ip:
	${foreach d, ${IPS}, cd ${d}/work ; make ip ; cd ${PWD};}

lvs:
	${foreach d, ${IPS}, cd ${d}/work ; make lvsall ; cd ${PWD};}

drc:
	${foreach d, ${IPS}, cd ${d}/work ; make drcall ; cd ${PWD};}
