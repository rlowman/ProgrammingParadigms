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

    # __init__() Constructor method for this class
    #
    # Param: f, the file to rate
    # Param: sexualList, list of words considered sexual
    #                    retrived from database
    # Param: curseList, list of words considered curse words
    #                   retrived from database
    # Param: adultList, list of words considered adult content
    #                   retrived from database
    def __init__(f, sexualList, curseList, adultList):
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
        
print "1: Rate a file"
print "2: Add a word to the database"
print "3: Remove a word from the database"
print "4: Close program"
option = input('Enter an options number: ')
checker = True

while checker:
    if option == 1:
        name = raw_input('Enter the file name: ')
        try:
            theFile = open(name, 'r')

        except IOError:
            print "Could not read file" 
            sys.exit()
        except:
            print "Unexpected error: ", sys.exc_info()[0]

            with theFile:
                rater = FileRater(theFile)
                rating = rater.calculateRating()
                ## print rating

    elif option == 2:
        addWord = raw_input('Enter the word to add: ')
        print "1: Sexual Word"
        print "2: Violent Word"
        print "3: Adult Content"
        addOption = input('Enter the number of the type of word you wish to add: ')
        if addOption == 1:
            # Code to add word to sexual table, filler unused
            filler = 0
        elif addOption == 2:
            # Code to add word to violent table, filler unused
            filler = 0
        elif addOption == 3:
            # Code to add word to adult table, filler unused
            filler = 0
        else :
            print "Command not recognized"

    elif option == 3:
        removeWord = raw_input('Enter the word to add:')
        print "1: Sexual Word"
        print "2: Violent Word"
        print "3: Adult Content"
        remveOption = input('Enter the number of the type of word you wish to remove')
        if removeOption == 1:
            # Code to remove word from sexual table
            filler = 0
        elif removeOption == 2:
            # Code to remove word from violent table
            filler = 0
        elif removeOption == 3:
            # Code to remove word from adult table
            filler = 0
        else :
            print "Command not recognized"

    elif option == 4:
        print "Have a nice day!"
        checker = False
    else:
        print "Unknown option" 
 
    

    
