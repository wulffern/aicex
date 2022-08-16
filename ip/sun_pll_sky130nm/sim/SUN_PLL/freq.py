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
        files.append(l.strip() + ".raw")


idsqs = list()

u = 1e6

f,axes = plt.subplots(1,1,sharex=False)

f.set_figheight(8)
f.set_figwidth(17)
for f in files:
    dfs = cs.toDataFrames(cs.ngRawRead(f))
    df = dfs[0]

    df.set_index("time",inplace=True)
    #df.index = pd.to_datetime(df.index,unit='s')

    prev = 0
    searchFalling = False
    vth = 0.8
    ts = list()
    time = list()
    for v in df["v(ck)"].iteritems():
        if(not searchFalling and v[1] > vth):
            t = v[0] - prev
            ts.append(t)
            time.append(v[0])
            prev = v[0]
            searchFalling = True

        if(searchFalling and v[1] < (vth-0.2)):
            searchFalling = False

    ts.pop(0)
    time.pop(0)

    nts = np.array(ts)
    ntime = np.array(time)

    plt.plot(ntime*u,1/nts/u,'-o')
    plt.xlabel("Time [us]")
    plt.ylabel("Frequency [MHz]")

plt.tight_layout()

if(len(sys.argv)> 2):
    plt.show()
else:
    plt.savefig(runfile.replace(".run",".pdf"))
