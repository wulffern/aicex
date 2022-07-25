#!/usr/bin/env python3


stipple = [
"11111111",
"10000011",
"10000111",
"10001101",
"10011001",
"10110001",
"11100001",
"11111111"
]

stipple1 = [
    "11111111",
    "11000001",
    "11100001",
    "10110001",
    "10011001",
    "10001101",
    "10000111",
    "11111111"

]

def stipple2hex(stipple):

    for s in stipple:
        x = int(s,2)
        print("%x" %x, end=" ")
    print("\n")


stipple2hex(stipple)
stipple2hex(stipple1)
