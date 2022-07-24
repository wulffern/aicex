#!/usr/bin/env python3

import sys
import os
import datetime

frun = sys.argv[1]
if(len(sys.argv) > 2):
    postfix = sys.argv[2]
else:
    now = datetime.datetime.now()
    postfix = now.strftime("%Y-%m-%d_%H%M")



#- Get output files from run
files = list()
with open(frun) as fi:
    for l in fi:
        files.append(l.strip())


forun = frun.replace(".run","") +"_"+postfix + ".run"
with open(forun,"w") as fo:
    for f in files:
        foc = f + "_" + postfix
        os.system(f"cp {f}.raw {foc}.raw ")
        os.system(f"cp {f}.spi {foc}.spi ")
        fo.write("{foc}.raw")
