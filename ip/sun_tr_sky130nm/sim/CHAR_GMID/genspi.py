#!/usr/bin/env python3
import os
nch = "idgm_nchdl"
pch = "idgm_pchdl"

blocks = [
    "CHDLA",
    "CHDLCM",
    "CHL",
    "CHLA",
    "CHLCM"
]

def genspi(fname,sub,repl):
    foname = fname.replace(sub.lower(),repl.lower())
    with open(fname + ".spi") as fi:
        with open(foname + ".spi","w") as fo:
            for l in fi:
                l = l.replace(sub,repl)
                fo.write(l)
    os.system(f"git add {foname}.py {foname}.spi")
    return foname

names = ""
for b in blocks:
    names += genspi(nch,"CHDL",b) + " "
    names += genspi(pch,"CHDL",b) + " "
print(names)
