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


for f in files:
    df = pd.read_csv(f)
    freq = 1/df["tpd"]
    kvco = np.mean(freq.diff()/df["vrosc"].diff())
    print("%20s KVCO = %.3g Hz/V" %(f,kvco))
