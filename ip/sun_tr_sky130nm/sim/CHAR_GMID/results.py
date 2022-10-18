#!/usr/bin/env python3
######################################################################
##        Copyright (c) 2020 Carsten Wulff Software, Norway
## ###################################################################
## Created       : wulff at 2020-11-20
## ###################################################################
##  The MIT License (MIT)
##
##  Permission is hereby granted, free of charge, to any person obtaining a copy
##  of this software and associated documentation files (the "Software"), to deal
##  in the Software without restriction, including without limitation the rights
##  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
##  copies of the Software, and to permit persons to whom the Software is
##  furnished to do so, subject to the following conditions:
##
##  The above copyright notice and this permission notice shall be included in all
##  copies or substantial portions of the Software.
##
##  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
##  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
##  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
##  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
##  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
##  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
##  SOFTWARE.
##
######################################################################

import pandas as pd
import glob
import os
import sys
import yaml



files = glob.glob("output_idgm*/idgm_*.yaml")
df_all = pd.DataFrame()
for f in files:
    with open(f) as fi:
        obj = yaml.safe_load(fi)
    #print(obj)
    df = pd.DataFrame([pd.Series(obj)])
    #df = pd.read_yaml(f)
    df["name"] =os.path.basename(f).replace("idgm_","").replace(".yaml","")
    #print(df)
    df_all = pd.concat([df,df_all])



print("|Parameter|Min | Typ | Max| ")
print("|:---| :-:| :-:| :-:| ")
for c in sorted(df_all.columns):
    if("gmid" not in c):
        continue
    df_all[c].dropna(inplace=True)
    #print(df_all[c])
    print("|%s | %.2g | %.2g | %.2g|" % (c,df_all[c].min(),df_all[c].mean(),df_all[c].max()))
