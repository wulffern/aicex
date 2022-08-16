import sys
import re
import pandas as pd
import numpy as np

def addKeyVal(data,key,val):
    if(key not in data):
        data[key] = list()

    data[key].append(val)

def main(fname):

    log = fname + ".log"

    analysis = False

    data = dict()

    with open(log) as fi:
        for l in fi:
            if(re.search("Doing analysis",l)):
                analysis = False

            if(analysis and re.search("=",l) and not re.search("failed",l)):
                keyVal = re.split("\s+",l)
                key = keyVal[0]
                val  = keyVal[2]
                addKeyVal(data,key,val)

            if(analysis and re.search("Error: measure",l)):
                m = re.search("Error: measure\s+(\S+)\s+",l)
                key = m.groups()[0]
                addKeyVal(data,key,np.nan)

            
            if(re.search("No. of Data Rows",l)):
                analysis = True


    
    df = pd.DataFrame(data)
    df.to_csv(fname + ".csv")

if __name__ == "__main__":
    fname = sys.argv[1]
    main(fname)
