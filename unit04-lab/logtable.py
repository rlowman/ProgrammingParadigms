## logtable.py displays a table of logarithms.
##
## Input: start, stop and increment, three doubles.
## PRE: start < stop && increment > 0.
## Output: A table of logarithms from start to stop,
##         with increment as the step value.
##
## Completed by: Robert Lowman
## Date: 11/29/2016
import math

start = input('Enter the start value: ')
stop = input('Enter the stop value: ')
inc = input('Enter the increment value: ')

while (start < stop):
    print 'The logarithm of ', start, ' is ', math.log10(start)
    start = start + inc
