## namer.py tests class Name and its operations
##
## Completed by: Robert Lowman
## Date: 12/1/2016

class Name:

    ## __init__() creates a new Name
    ## Input: self, instance of Name
    ##        first, the first name
    ##        middle, the middle name
    ##        last, the middle name
    ## Return: the Name instance
    def __init__(self, first, middle, last):
        self.first = first
        self.middle = middle
        self.last = last

    ## fullName() returns name in full
    ## Return: formatted full name string
    def fullName(self):
        return self.first + " " + self.middle + " " + self.last

    ## printName() prints the name first middle last
    ## Output: the string in proper format
    def printName(self):
        print self.fullName()

    ## lfmi() prints the name in lfmi format
    ## Output() Name in lfmi format
    def lfmi(self):
        return self.last + ", " + self.first + " " + self.middle[0]

    ## read() reads in new values for a Name
    def read(self):
        self.first = raw_input('Enter the first: ')
        self.middle = raw_input('Enter the middle: ')
        self.last = raw_input('Enter the last: ')

aName = Name("John", "Paul", "Jones")
assert aName.first == "John", "Invalid first"
assert aName.middle == "Paul", "Invalid middle"
assert aName.last == "Jones", "Invalid last"
assert aName.fullName() == "John Paul Jones", "Invalid full"
aName.printName()

assert aName.lfmi() == "Jones, John P", "Invalid lfmi"
aName.first = "Robert"
aName.middle = "Craig"
aName.last = "Lowman"

assert aName.fullName() == "Robert Craig Lowman", "Invalid changed name"

aName.read()
print "Newly created Name: "
aName.printName()

print "All tests passed!"
