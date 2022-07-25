######################################################################
##        Copyright (c) 2022 Carsten Wulff Software, Norway
## ###################################################################
## Created       : wulff at 2022-4-27
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


include ../../../tech/make/core.make

LIB=SUN_SAR9B_SK130NM
CELL=SAR9B_CV

#----------------------------------------------------------------------------
# REGRESSION
#----------------------------------------------------------------------------

CELLS = SARDIGEX4_CV SARCMPX1_CV SARBSSW_CV CAP32C_CV CDAC8_CV SAR9B_CV

calccap:
	cat lpe/CAP32C_CV_lpe.spi |grep CTOP|grep XRES | perl -e 'while(<>){@ar = split(/\s+/); $$c = $$ar[-1]; $$c =~ s/fF//ig; m/XRES(\d+)\w?\//ig; $$m = $$1; printf("%-2d\t%.3f %.3f\n",$$m,$$c,($$c/$$m));}'
