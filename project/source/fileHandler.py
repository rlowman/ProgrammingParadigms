## File: main.py
## Implements a file-rate based on sexual, violent, and adult content
##
## Name: Robert Lowman
## Due Date: 12/8/2016
import porterStemmer
import math
import re

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
    def __init__(self, f, sexualList, violentList, adultList,
                    sexualBase, violentBase, adultBase):
        self.sList = sexualList
        self.vList = violentList
        self.aList = adultList
        self.theFile = f
        self.totalWords = 0.0
        self.sexualWords = 0.0
        self.violentWords = 0.0
        self.adultContentWords = 0.0
        self.sBase = sexualBase
        self.vBase = violentBase
        self.aBase = adultBase
        self.stemmer = porterStemmer.PorterStemmer()
        self.setWords()

    ## Helper method for the constructor class to set fields
    ##      based off of given file
    def setWords(self):
        for line in self.theFile:
            temp = line.split()
            for word in temp:
                theWord = re.sub("[^a-zA-Z]+", "", word)
                theWord = theWord.lower()
                self.totalWords = self.totalWords + 1.0
                stem = self.stemmer.stripWord(theWord)
                if stem in self.sList:
                    self.sexualWords = self.sexualWords + 1.0
                if stem in self.vList:
                    self.violentWords = self.violentWords + 1.0
                if stem in self.aList:
                    self.adultContentWords = self.adultContentWords + 1.0

    ## Calculates the rating of the file
    def calculateRating(self):
        s = self.sexualWords / self.totalWords
        v = self.violentWords / self.totalWords
        a = self.adultContentWords / self.totalWords
        first = math.pow(1 + s, self.sBase + s)
        second = math.pow(1 + v, self.vBase + v)
        third = math.pow(1 + a, self.aBase + a)
        return first + second + third
