## hw06.py recieves the size to make an array and doubles
##  to fill this array and then prints its contents
## Precondition: size > 0
## Output: the values in theArray
##
## Completed by: Robert Lowman
## Date: 12/1/2016

## read() reads in an array of doubles
## Receive: anArray, an array of correct size
##          itsSize, the size of the given array
def read(anArray, itsSize):
  for i in range(itsSize):
    temp = input('')
    anArray.append(temp)

## print() prints the given array it receives
## Receive: anArray, an array of numbers
def printArray(anArray):
  for i in anArray:
    print i

anArray = []
size = input('Enter size of the array: ')
print 'Enter that many doubles: '
read(anArray, size)
print 'Result: '
printArray(anArray)
