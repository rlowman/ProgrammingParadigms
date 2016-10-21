## File Name: circlearea.py
## Calculates the area of a circle
## Name: Robert Lowman
## Date: 10/20/2016

###############################################
# computeArea() computes the area of the circle 
#          with the given radius
#
# Param: radius, the radius of the circle
# Return: the value of the area
def computeArea(radius):
  PI = 3.1415927
  temp = (PI * radius * radius) 
  return temp

# Begin of execution
r = input('To compute the area of a circle, enter its radius: ')
result = computeArea(r)
print "The area is ", result
