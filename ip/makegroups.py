#!/usr/bin/env python3

import yaml
import os

with open("config.yaml") as fi:
    obj = yaml.safe_load(fi)

ip = obj["options"]["template"]["ip"]
project = obj["options"]["project"]
technology = obj["options"]["technology"]

debug = True

def doCmd(ss):
    if(debug):
        print(ss)
    else:
        os.system(ss)



for i in range(2,8):
    ss = f"gr{i:02d}"
    name = project + "_" + ss + "_" + technology.lower()
    doCmd(f"cicconf newip --project {project} --technology {technology} --ip {ip} {ss}")
    doCmd(f"gh repo create analogicus/{name} --public")
    doCmd(f"cd {name} && git remote add origin git@github.com:analogicus/{name}.git ")
    doCmd(f"cd {name} && git push --set-upstream origin main")
