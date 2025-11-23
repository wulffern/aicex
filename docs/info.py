#!/usr/bin/env python3

import yaml
import glob

from collections import OrderedDict

tmplt = """
{name}: [repos](https://github.com/{user}/{repository}) [docs](https://{user}.github.io/{repository})
[![GDS](https://github.com/{user}/{repository}/actions/workflows/gds.yaml/badge.svg)](https://github.com/{user}/{repository}/actions/workflows/gds.yaml)
[![DRC](https://github.com/{user}/{repository}/actions/workflows/drc.yaml/badge.svg)](https://github.com/{user}/{repository}/actions/workflows/drc.yaml)
[![LVS](https://github.com/{user}/{repository}/actions/workflows/lvs.yaml/badge.svg)](https://github.com/{user}/{repository}/actions/workflows/lvs.yaml)
[![DOCS](https://github.com/{user}/{repository}/actions/workflows/docs.yaml/badge.svg)](https://github.com/{user}/{repository}/actions/workflows/docs.yaml)
[![SIM](https://github.com/{user}/{repository}/actions/workflows/sim.yaml/badge.svg)](https://github.com/{user}/{repository}/actions/workflows/sim.yaml)
"""

from urllib import request, error

def is_404(url):
    try:
        request.urlopen(url, timeout=5)
        return False
    except error.HTTPError as e:
        return e.code == 404
    except:
        # DNS failure, refused connection, etc.
        return False

def getYaml(filename):
    with open(filename) as fi:
        obj = yaml.safe_load(fi)
    return obj

config = getYaml("ip/config.yaml")
files = sorted(glob.glob("ip/**/info.yaml"))

years = OrderedDict()
years["sun"] = { "year" : 2022, "name": "Ayrun Sun", "universe" : "Farscape", "quote" : "It's not you, it's me, I don't like you."}
years["rply"] = { "year" : 2023, "name": "Ellen Ripley", "universe" : "Aliens", "quote" : "I say we take off and nuke the site from orbit. It's the only way to be sure."}
years["cnr"] = { "year" : 2024, "name": "Sarah Connor", "universe" : "Terminator 2: Judgment Day", "quote" : "In an insane world, it was the sanest choice."}
years["jnw"] = { "year" : 2025, "name": "Kathryn Janeway", "universe" : "Star Trek Voyager: Prime Factors", "quote" : "You can use logic to justify almost anything. That's its power. And its flaw."}


def printInfo(k):
    if("remote" not in config[k]):
        return
    repo = config[k]["remote"]
    url = "https://" + repo.replace("git@github.com:","").replace(".git","").replace("/",".github.io/")
    gitrepo = "https://" + repo.replace("git@","").replace(".git","").replace(":","/")
    description = ""
    if("description" in config[k]):
        description = config[k]["description"]
    if(is_404(url)):
        print("[" + k + "](" + gitrepo + ") : " + description)

    else:
        print("[" + k + "](" + url + ") : " + description)
    print("\n")



visited = list()

for key in years:
    #filtered = sorted([s for s in files if key in s.lower()])
    print("## " + str(years[key]["year"]) + " - " +  key.upper())
    print(f"\n> {years[key]['quote']} - {years[key]['name']},{years[key]['universe']}\n")
    for k in config:
        if(key in k):
            printInfo(k)
            visited.append(k)

print("## Other \n")
for k in config:
    if(k not in visited):
        printInfo(k)
