## File Name: yearcodes.py
## Calculates the given year code for the given grade
##
## Name: Robert Lowman
## Date: 10/20/2016

CONST_FRESH = "freshman"
CONST_SOPH = "sophomore"
CONST_JUN = "junior"
CONST_SEN = "senior"

###############################################
# yearCode() converts an academic year into its
#          corresponding year code
#
# Param: year the String value of the academic year
# Return: the corresponding year code
def yearCode(year):
    if year == CONST_FRESH:
        return 1
    elif year == CONST_SOPH:
        return 2
    elif year == CONST_JUN:
        return 3
    elif year == CONST_SEN:
        return 4
    else:
        return 0

# Begin of execution
y = raw_input('Enter the academic year: ')
result = yearCode(y)
print "Result:", result
