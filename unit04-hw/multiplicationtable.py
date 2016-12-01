## multiplicationtable.py displays a multiplication table.
##
## Input: size, the size of the table.
## PRE: start > 0.
## Output: A table of the given size
##
## Completed by: Robert Lowman
## Date: 12/1/2016

size = input('Enter the size: ')

for i in range(size):
    for j in range(size):
        value = (i + 1) * (j + 1)
        print str(value) + '\t',
    print ''
