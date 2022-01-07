#!/usr/bin/env python3

import pandas as pd
import numpy as np
import cicsim as cs
import matplotlib.pyplot as plt
import glob
import os
import sys

def findgm(df,gmid,idsqs):
    d = dict()
    dfg = df.iloc[(df['gmid']-gmid).abs().argsort()[:1]]
    d["gmid"] = gmid
    d["vgs"] = dfg["vgs"].iloc[0]
    d["idsq"] = dfg["idsq"].iloc[0]
    idsqs.append(d)

def descr(df,gmid):
    di = df[df["gmid"] == gmid]
    d = dict()
    d["gmid"] = gmid
    d["vgs_min"] = di["vgs"].min()
    d["vgs_max"] = di["vgs"].max()
    d["vgs_mean"] = di["vgs"].mean()
    d["vgs_pp"] = di["vgs"].max() - di["vgs"].min()

    d["idsq_min"] = di["idsq"].min()
    d["idsq_max"] = di["idsq"].max()
    d["idsq_mean"] = di["idsq"].mean()
    d["idsq_pp"] = di["idsq"].max() - di["idsq"].min()
    return d



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

f,axes = plt.subplots(2,1,sharex=True)
f.set_figheight(8)
f.set_figwidth(17)
for f in files:
    dfs = cs.toDataFrames(cs.ngRawRead(f))
    df = dfs[0]

    if("i(binn)" in df):
        df["i(i-sweep)"] =df["i(binn)"]


    
    df["gmid"] = df["v(gm)"]/df["i(i-sweep)"]
    df["vgs"] = df["v(n1)"]
    df["idsq"] = df["v(idsq)"]

    #- Find gmid 10,15,22
    findgm(df,10,idsqs)
    findgm(df,15,idsqs)
    findgm(df,20,idsqs)

    
    axes[0].plot(df["vgs"],df["gmid"],label=f)
    axes[1].semilogy(df["vgs"],df["idsq"],label=f)

axes[1].set_ylabel("$i_dsq$")
axes[0].set_ylabel("$gmid$")
axes[0].grid()
axes[0].legend()
axes[1].grid()
axes[1].legend()
plt.xlabel("$V_{GS}$")
plt.tight_layout()

if(len(sys.argv)> 2):
    plt.show()
else:
    plt.savefig(runfile.replace(".run",".pdf"))

#- print idsqs
di = pd.DataFrame(idsqs)
dfol = list()
dfol.append(descr(di,10))
dfol.append(descr(di,15))
dfol.append(descr(di,20))
dfo = pd.DataFrame(dfol)
dfo.to_csv(runfile.replace(".run",".csv"))
