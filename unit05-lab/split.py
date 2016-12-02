## split.py recives a string and splits it at
##       given position
##
## Input: aString, string to split
##        pos, the position to split at
## Preconditions: pos < length of aString
## Output: the given string split
##
## Author: Robert Lowman
## Date: 12/1/2016

aString = raw_input('Enter the string to split: ')
pos = input('Enter the splitting position: ')

print 'The first part is ', aString[0:pos]
length = len(aString)
print 'The second part is ', aString[pos:length]
