## Main file of the File Rater program. Implements a console-based
## interface that groups together all modules the program requires.
## Ensure that the files given to this program are stored in the same
## directory or the program will not be able to find it.
##
## Author: Robert Lowman
import psycopg2
import dbModule
import fileHandler
import sys
import re

## Makes connection to the database
connection = psycopg2.connect("host = 'vps.kings-cs.com' user = 'robertlowman' password = 'patriots8' dbname = 'robertlowman'")
db = dbModule.dbHandler(connection)

## Handles the functionality of adding a word
##      to the database
def addWord():
    a = False
    while not a:
        print "******************* Add Word Menu ********************"
        print "Select an option:"
        print "1: Add words"
        print "2: Save changes"
        print "3: Delete changes"
        print "4: Save changes and exit to main menu"
        print "5: Delete changes and exit to main menu"
        op = input('> ')
        print ""
        ## Adding words functionality
        if op == 1:
            addBool = False
            while not addBool:
                print "Enter the word to add or 'q' to go back:"
                addWord = raw_input('> ')
                addWord = re.sub("[^a-zA-Z]+", "", addWord)
                addWord = addWord.lower()
                print ""
                if addWord == "q":
                    addBool = True              # Exiting
                else:
                    print "Enter the number of the type of word you wish to add:"
                    print "1: Sexual Word"
                    print "2: Violent Word"
                    print "3: Adult Content"
                    addOption = input('> ')
                    print ""
                    if addOption == 1:
                        if db.addSexualWord(addWord):
                            print addWord + " successfully added as a sexual word.\n"
                        else:
                            print addWord + " is already in the database as a sexual word.\n"
                    elif addOption == 2:
                        if db.addViolentWord(addWord):
                            print addWord + " successfully added as a violent word."
                        else:
                            print addWord + " is already in the database as a violent word.\n"
                    elif addOption == 3:
                        if db.addAdultWord(addWord):
                            print addWord + " successfully added as an adult word.\n"
                        else:
                            print addWord + " is already in the database as an adult word.\n"
                    else:
                        print "Command not recognized.\n"
        ## Saving changes
        elif op == 2:
            connection.commit()
            print "Changes saved.\n"
        ## Deleting changes
        elif op == 3:
            connection.rollback()
            print "Changes deleted.\n"
        ## Save and Exit
        elif op == 4:
            connection.commit()
            a = True
        ## Delete and exit
        elif op == 5:
            connection.commit()
            a = True
        ## Unknown
        else:
            print "Command not recognized.\n"

## Helper method for the main executing that removes a word
##      from the database
def removeWord():
    rem = False
    while not rem:
        print "****************** Remove Word Menu ******************"
        print "Select an option:"
        print "1: Remove words"
        print "2: Save changes"
        print "3: Delete changes"
        print "4: Save changes and exit to main menu"
        print "5: Delete changes and exit to main menu"
        op = input('> ')
        print ""
        ## Removing words functionality
        if op == 1:
            remBool = False
            while not remBool:
                print "Enter the word to remove or 'q' to go back:"
                removeWord = raw_input('> ')
                print ""
                if removeWord == "q":           # Exiting
                    remBool = True
                else:
                    print "1: Sexual Word"
                    print "2: Violent Word"
                    print "3: Adult Content"
                    removeOption = input('Enter the number of the type of word you wish to remove: ')
                    if removeOption == 1:
                        if db.deleteSexualWord(removeWord):
                            print removeWord + " removed as a sexual word."
                        else:
                            print removeWord + " not found in database."
                    elif removeOption == 2:
                        if db.deleteViolentWord(removeWord):
                            print removeWord + " removed as a violent word."
                        else:
                            print removeWord + " not found in database."
                    elif removeOption == 3:
                        if db.deleteAdultWord(removeWord):
                            print removeWord + " removed as an adult word."
                        else:
                            print removeWord + " not found in database."
                    else:
                        print "Command not recognized."
        ## Saving changes
        elif op == 2:
            connection.commit()
            print "Changes saved."
        ## Deleting changes
        elif op == 3:
            connection.rollback()
            print "Changes deleted."
        ## Save and Exit
        elif op == 4:
            connection.commit()
            rem = True
        ## Delete and exit
        elif op == 5:
            connection.commit()
            rem = True
        ## Unknown
        else:
            print "Command not recognized."

######################################################
################  BEGIN OF EXECUTION  ################
######################################################
checker = True
while checker:
    print "********************* Main Menu *********************"
    print "Select an option by entering the corresponding number:"
    print "1: Rate a file"
    print "2: Add a word to the database"
    print "3: Remove a word from the database"
    print "4: Close program"
    option = input('> ')
    print ""
    if option == 1:             # File Rating Functionality
        name = raw_input('Enter the file name: ')
        theFile = open(name, 'r')
        # try:
        #
        sexualList = db.getSexualWords()
        violentList = db.getViolentWords()
        adultList = db.getAdultWords()
        rater = fileHandler.FileRater(theFile, sexualList, violentList, adultList, 5, 5, 5)
        rating = rater.calculateRating()
        print "File Rating: %.3f\n" % rating
        #
        # except IOError:
        #     print "Could not read file"
        #     sys.exit()
        # except:
        #     print "Unexpected error: ", sys.exc_info()[0]

    elif option == 2:           # Adding Word functionality
        addWord()

    elif option == 3:           # Removing Word functionality
        removeWord()

    elif option == 4:           # Exiting
        print "Have a nice day!"
        checker = False
    else:
        print "Unknown option\.n"
