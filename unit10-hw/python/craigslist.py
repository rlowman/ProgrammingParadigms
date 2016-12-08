## mylist.py creates functions for a list
## Author: Robert Lowman
## Date: 12/6/16
class craigslist:

    def __init__(self, theList):
        self.list = theList

    def printList(self):
        print self.list

    def search(self, aValue):
        length = len(self.list)
        found = False
        i = 0
        returnValue = -1
        while i < length and not found:
            if self.list[i] == aValue:
                found = True
                returnValue = i
            i = i + 1
        return returnValue
