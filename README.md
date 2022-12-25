---
layout: home
---

[![aicex ci](https://github.com/wulffern/aicex/actions/workflows/tests.yaml/badge.svg)](https://github.com/wulffern/aicex/actions/workflows/tests.yaml)[![docs](https://github.com/wulffern/aicex/actions/workflows/jekyll-gh-pages.yml/badge.svg)](https://wulffern.github.io/aicex)

Head over to [wulffern.github.io/aicex](https://wulffern.github.io/aicex) for
information on how to use this repository.

# Known issues

## Xschem
* Netlisting seems to be done not by pin number, but by order of B's in .sym.
  Also, I've experienced different ordering for subckts, and for top cell
* Be careful of x1[5:0] notation. Xschem does not automatically discover if
  there is another same x<nr>. I would recommend always uniquely naming
  instances with bus notation 

## docker
* The aicex user has a uid of 1000, however, if you try and run it on a machine
  with a different uid for your user, then it does not seem to work. Don't know
  how to fix it yet.
