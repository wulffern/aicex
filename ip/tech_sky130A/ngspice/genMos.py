#!/usr/bin/env python3


pdk = "../../tech/pdk/sky130A/libs.ref/sky130_fd_pr/spice"



corners = { "Mtt" : "tt",
            "Mff" : "ff",
            "Msf" : "sf",
            "Mfs" : "fs",
            "Mss" : "ss"
           }

lbheader = """
*--------------------------------------------------
.lib {key}
*--------------------------------------------------"""

lbfooter = """

.include ""../../../tech/pdk/sky130A/libs.tech/ngspice/all.spice"
.endl
* end {key}

"""

tmpl = """
.include "../{pdk}/sky130_fd_pr__{device}__{corner}.corner.spice"
.include "../{pdk}/sky130_fd_pr__{device}__mismatch.corner.spice"
"""

#tmpl = """
#.include "../{pdk}/cells/{device}/sky130_fd_pr__{device}__{corner}.corner.spice"
#.include "../{pdk}/cells/{device}/sky130_fd_pr__{device}__mismatch.corner.spice"
#"""

devices = [
    "nfet_01v8",
    "nfet_01v8_lvt",
    "pfet_01v8",
    "pfet_01v8_lvt"
]

for c in corners:
    print(lbheader.replace("{key}",c))
    for d in devices:
        print(tmpl.replace("{pdk}",pdk).replace("{device}",d).replace("{corner}",corners[c]))
    print(lbfooter.replace("{pdk}",pdk).replace("{key}",c))
