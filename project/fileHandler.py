## File: main.py
## Implements a file-rate based on sexual, violent, and adult content
##
## Name: Robert Lowman
## Due Date: 12/8/2016

class FileRater:

    totalWords = 0
    sexualWords = 0
    curseWords = 0
    adultContentWords = 0

    # __init__() Constructor method for this class
    #
    # Param: f, the file to rate
    # Param: sexualList, list of words considered sexual
    #                    retrived from database
    # Param: curseList, list of words considered curse words
    #                   retrived from database
    # Param: adultList, list of words considered adult content
    #                   retrived from database
    def __init__(f, sexualList, violentList, adultList):
        self.sList = sexualList
        self.cList = curseList
        self.aList = adultList
        self.theFile = f
        self.setWords(self)

    def setWords(self):
        filler = 0
        # Read all words in file, and increment each category
        # depending if that word was found in database or not
        # filler is not used, just there to avoid indentation error

    def calculateRating(self):
        fill = 0
        # With everything calculated, return the value of the
        # algorithm that gives the file a rating
        # fill is unused, just there to avoid indentation error
