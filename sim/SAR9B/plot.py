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

tsample = 100

f,ax = plt.subplots(1,1,sharex=False)

axes = list()
axes.append(ax)
f.set_figheight(8)
f.set_figwidth(17)
for f in files:
    dfs = cs.toDataFrames(cs.ngRawRead(f))
    df = dfs[0]

    df.set_index("time",inplace=True)
    df.index = pd.to_datetime(df.index,unit='s')


    fullscale_in = 1.5

    sigi = df["v(sar_ip)"] - df["v(sar_in)"]/fullscale_in
    saro = df["v(ro)"]

    sigixx =  sigi.resample(pd.Timedelta(tsample,unit="ns")).first()
    saroxx =  saro.resample(pd.Timedelta(tsample,unit="ns")).first()

    sigixx = sigixx[-nbpt-1:-1]
    saroxx = saroxx[-nbpt-1:-1]

    scc = cs.SimCalc()
    (data1,ydB1) = scc.fftWithHanning(sigixx.to_numpy())
    (data3,ydB3) = scc.fftWithHanning(saroxx.to_numpy())

    print("input signal: " + str(data1))
    print("output signal: " + str(data3))

    axes[0].plot(ydB1,label=f + " fft sigi",linestyle='solid',marker="d")
    axes[0].plot(ydB3,label=f + " fft saro",linestyle='solid',marker="o")

axes[0].set_ylabel("fft(v(ro))")
axes[0].grid()
axes[0].legend()
axes[0].text(10,-20,"input signal " + str(data1))
axes[0].text(10,-30,"output signal "  + str(data3))
axes[0].axis([0,len(ydB3),-100,10])
plt.tight_layout()

if(len(sys.argv)> 2):
    plt.show()
else:
    plt.savefig(runfile.replace(".run",".pdf"))

