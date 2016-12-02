## Name.py holds information about a first,
##     middle, and last name
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
