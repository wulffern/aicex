#!/usr/bin/env python3


import pandas as pd
import numpy as np
import cicsim as cs
import matplotlib.pyplot as plt
import glob
import os
import sys


nbpt = 64


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

f,axes = plt.subplots(2,1,sharex=False)
f.set_figheight(8)
f.set_figwidth(17)
for f in files:
    dfs = cs.toDataFrames(cs.ngRawRead(f))
    df = dfs[0]

    df.set_index("time",inplace=True)
    df.index = pd.to_datetime(df.index,unit='s')

    sarn = df["v(sarn)"]
    sarp = df["v(sarp)"]

    saro = sarp - sarn

    sarxx =  saro.resample(pd.Timedelta(100,unit="ns")).first()
    #sarxx = sarxx[1:nbpt]

    scc = cs.SimCalc()
    (data,ydB) = scc.fftWithHanning(sarxx.to_numpy())
    (data1,ydB1) = scc.fft(sarxx.to_numpy())

    axes[0].plot(sarxx.index,sarxx,label=f,marker=".")
    axes[1].plot(ydB,label=f + "fftHann",marker=".")
    axes[1].plot(ydB1,label=f + "fft",linestyle='None',marker=".")

axes[1].set_ylabel("SARP - SARN")
axes[0].set_ylabel("fft(SARP - SARN)")
axes[0].grid()
axes[0].legend()
axes[1].grid()
axes[1].text(10,-20,str(data))
axes[1].axis([0,len(ydB),-200,10])
axes[1].legend()
plt.tight_layout()

if(len(sys.argv)> 2):
    plt.show()
else:
    plt.savefig(runfile.replace(".run",".pdf"))

