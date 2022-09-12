#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""

"""

from myhdl import *


@block
def halfAdder(a, b, soma, carry):
    @always_comb
    def comb():
        soma.next = (a or b) and not (a and b)
        carry.next = a and b

    return instances()


@block
def fullAdder(a, b, c, soma, carry):
    s = [Signal(bool(0)) for i in range(3)]
    haList = [None for i in range(2)]  # 

    haList[0] = halfAdder(a, b, s[0], s[1]) 
    haList[1] = halfAdder(c, s[0], soma, s[2])

    @always_comb
    def comb():
        carry.next = s[1] | s[2]

    return instances()


@block
def adder2bits(x, y, soma, carry):

    carry0 = Signal(bool(0))
    half_1 = halfAdder(x[0], y[0], soma[0], carry0)
    full_1 = fullAdder(x[1], y[1], carry0, soma[1], carry)

    return instances()


@block
def adder(x, y, soma, carry):
    n = len(x)
    faList = [None for i in range(n)]
    carryList = [Signal(bool(0)) for i in range(n)]
    faList[0] = fullAdder(x[0], y[0], 0, soma[0], carryList[0])
    for i in range(1, n):
        faList[i] = fullAdder(x[i], y[i], carryList[i - 1], soma[i], carryList[i])

    @always_comb
    def comb():
        carry.next = carryList[n-1]
    return instances()
