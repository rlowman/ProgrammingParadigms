## porterStemmerTest.py tests the accuracy of the Porter Stemmer
## Author: Robert Lowman
## Date: 12/8/16
import unittest
import porterStemmer

stemmer = porterStemmer.PorterStemmer()
testFile = open('PorterStemmerTest.txt', 'r')
resultFile = open('PorterStemmerResults.txt', 'r')
for line in testFile:
    theLine = line.strip()
    temp = resultFile.readline().strip()
    stem = stemmer.stripWord(theLine)
    if temp != stem:
        print theLine + " became " + stem + " after stemming, but " \
             + temp + " was expected.\n"
