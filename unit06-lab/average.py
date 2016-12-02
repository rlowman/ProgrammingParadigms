## average.py averages the values of an array of doubles.
## Precondition: theArray is an array of numbers
## Output: the average of the values in theArray
##
## Robert Lowman
## Date: 12/1/2016

## average() averages the values in an array
## Receive: anArray, an array of numbers
## Return: the average of the values in anArray.
def average(anArray):
  if not anArray:
    return 0
  else:
    return sum(anArray) / len(anArray)

first = []
second = [9.0, 8.0, 7.0, 6.0]

print 'The first array sum:', sum(first)
print 'The second array sum:', sum(second)
print 'The first array average:', average(first)
print 'The second array average:', average(second)
