## File: main.c
## Implements a file-rate based on sexual, violent, and adult content
##
## Name: Robert Lowman
## Due Date: 12/8/2016

class FileRater:

    totalWords = 0
    sexualWords = 0
    curseWords = 0
    adultContentWords = 0
    
    def __init__(fileName):
        self.f = open(fileName, 'r')

    def setWords(self):
        BUFFER_SIZE = 1024
        buffer = self.f.read(BUFFER_SIZE)
        
        
