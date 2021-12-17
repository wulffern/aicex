#!/usr/bin/env python3

import pandas as pd
import numpy as np
import cicsim as cs
import matplotlib.pyplot as plt




def main(fname):
    fraw = fname + ".raw"
    f,axes = plt.subplots(1,1)
    cs.rawplot(fraw,"v(n1)","v(i-sweep)","same,file,logy",axes)
    plt.xlabel("VGS")
    plt.ylabel("ID")
    plt.savefig(fname + "_vgs.pdf")
