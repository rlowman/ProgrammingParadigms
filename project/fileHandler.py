## File: main.py
## Implements a file-rate based on sexual, violent, and adult content
##
## Name: Robert Lowman
## Due Date: 12/8/2016

class FileRater:


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
        self.vList = violentList
        self.aList = adultList
        self.theFile = f
        self.setWords(self)
        self.totalWords = 0
        self.sexualWords = 0
        self.violentWords = 0
        self.adultContentWords = 0

    def setWords(self):
        for line in f:
            temp = line.split()
            for word in temp:
                totalWords = totalWords + 1
                if sList.count(word) > 0:
                    sexualWords = sexualWords + 1
                if vList.count(word) > 0:
                    violentWords = violentWords + 1
                if aList.count(word) > 0:
                    adultContentWords = adultContentWords + 1

    def calculateRating(self):
        return (sexualWords/totalWords) + (violentWords/totalWords) + (adultContentWords/totalWords)
