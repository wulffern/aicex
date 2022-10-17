import sys
import re
import pandas as pd

def main(fname):

    log = fname + ".log"

    analysis = False

    data = dict()

    with open(log) as fi:
        for l in fi:
            if(analysis and re.search("=",l)):
                keyVal = re.split("\s+",l)
                data[keyVal[0]] = float(keyVal[2])

            if(re.search("binary raw file",l)):
                analysis = False
            
            if(re.search("Measurements for DC Analysis",l)):
                analysis = True


    df = pd.DataFrame(data,index=[0])
    df.to_csv(fname + ".csv")

if __name__ == "__main__":
    fname = sys.argv[1]
    main(fname)
