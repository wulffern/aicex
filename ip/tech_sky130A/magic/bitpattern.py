#!/usr/bin/env python3

import re
import binascii

def printPattern(ss):
    ds = re.split("\s+",l)

    print(l)
    for i in range(1,9):
        d = int(ds[i],16)
        print(format(d, '0>8b'))

    print("\n")


buff = list()

stipple = False
with open("mos.24bit.dstyle") as fi:
    for l in fi:
        if(re.search("^stipples",l)):
            stipple = True
        if(stipple and re.search("^\d+",l)):
            printPattern(l)
