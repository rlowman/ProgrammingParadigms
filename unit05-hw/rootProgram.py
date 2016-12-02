## rootProgram.py finds the roots of an equation.
##
## Input: a b c values for the quadratic formula
## Output: The roots of the equation
##
## Completed by: Robert Lowman
## Date: 12/1/16
#################################################################
import math

firstRoot = 0
secondRoot = 0

## quadraticRoots() finds the roots from the given values
## Receive: a The a value in the quadratic formula
##          b The b value in the quadratic formula
##          c The c value in the quadratic formula
## Return: the two roots of the equation
def quadraticRoots(a, b, c):
    if a != 0:
        arg = pow(b, 2) - 4 * a * c
        if arg >= 0:
            global firstRoot
            global secondRoot
            firstRoot = (-b + math.sqrt(arg))/(2*a)
            secondRoot = (-b - math.sqrt(arg))/(2*a)
            return True
        else:
            print '\n*** quadraticRoots(): b^2 - 4ac is negative!'
            return False
    else:
        print '\n*** quadraticRoots(): a is zero!'
        return False

a = input('Enter a: ')
b = input('Enter b: ')
c = input('Enter c: ')

if quadraticRoots(a, b, c):
    print 'The first root is: ', firstRoot
    print 'The second root is ', secondRoot
