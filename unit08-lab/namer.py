## namer.py tests class Name and its operations
##
## Completed by: Robert Lowman
## Date: 12/1/2016

class Name:

    def __init__(self, first, middle, last):
        self.first = first
        self.middle = middle
        self.last = last

    def fullName(self):
        return self.first + " " + self.middle + " " + self.last

    def printName(self):
        print self.fullName()

aName = Name("John", "Paul", "Jones")
assert aName.first == "John", "Invalid first"
assert aName.middle == "Paul", "Invalid middle"
assert aName.last == "Jones", "Invalid last"
assert aName.fullName() == "John Paul Jones", "Invalid full"
aName.printName()
print "All tests passed!"
