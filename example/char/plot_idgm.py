#!/usr/bin/env python3

import pandas as pd
import numpy as np
import cicsim as cs
import matplotlib.pyplot as plt
import glob
import os



glb = glob.glob("output_idgm" +  os.path.sep + "*.raw")

f,axes = plt.subplots(1,1)

for fraw in glb:
    cs.rawplot(fraw,"v(n1)","i(i-sweep)","same,file,logy",axes)

plt.xlabel("$V_{GS}$")
plt.ylabel("$I_{D}$")
plt.show()
#cs.plot(dfs[0],)
