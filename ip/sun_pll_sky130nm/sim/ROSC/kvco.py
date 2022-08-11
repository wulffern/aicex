#!/usr/bin/env python3

#!/usr/bin/env python3


import pandas as pd
import numpy as np
import cicsim as cs
import matplotlib.pyplot as plt
import glob
import os
import sys


if(len(sys.argv) < 2):
    print("I need a run file")
    exit()

runfile = sys.argv[1]

#- Get output files from run
files = list()
with open(runfile) as fi:
    for l in fi:
        files.append(l.strip() + ".csv")

Meg = 1e6

for f in files:
    df = pd.read_csv(f)
    freq = 1/df["tpd"]
    kvco = np.mean(freq.diff()/df["vrosc"].diff())

    print("%20s KVCO = %5.3g Hz/V, fmax = %8.3g MHz, fmin = %8.3g MHz, vmin = %2.2g, vmax = %2.2g" %(f,kvco,freq.max()/Meg,freq.min()/Meg,df["vrosc"].min(),df["vrosc"].max()))
