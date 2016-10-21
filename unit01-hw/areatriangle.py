## File Name: areatirangle.py
## Finds the area of a triangle with given height and width
##
## Name: Robert Lowman
## Date: 10/20/2016

###############################################
# computeArea() computes the area of the triangle 
#          with the given height and width
#
# Param: height, the height of the triangle
#        base, the length of the base of the triangle
# Return: the value of the area
def computeArea(height, base):
  temp = (.5 * height * base) 
  return temp

# Begin of execution
h = input('To compute the area of a triangle, enter its height: ')
b = input('Enter the length of the base: ');
result = computeArea(h, b)
print "The area is ", result
