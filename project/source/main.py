import psycopg2
import dbModule
import fileHandler

## Makes connection to the
connection = psycopg2.connect("host = 'vps.kings-cs.com' user = 'robertlowman' password = 'patriots8' dbname = 'robertlowman'")
db = dbModule.dbHandler(connection)

## Handles the functionality of adding a word
##      to the database
def addWord():
    a = False
    while not a:
        print "1: Add words"
        print "2: Save changes"
        print "3: Delete changes"
        print "4: Save changes and exit to main menu"
        print "5: Delete changes and exit to main menu"
        op = input('Select an option: ')
        ## Adding words functionality
        if op == 1:
            addBool = False
            while not addBool:
                addWord = raw_input("Enter the word to add or 'q' to go back: ")
                if addWord == "q":
                    addBool = True
                else:
                    print "1: Sexual Word"
                    print "2: Violent Word"
                    print "3: Adult Content"
                    addOption = input('Enter the number of the type of word you wish to add:')
                    if addOption == 1:
                        db.addSexualWord(addWord)
                    elif addOption == 2:
                        db.addViolentWord(addWord)
                    elif addOption == 3:
                        db.addAdultWord(addWord)
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
            a = True
        ## Delete and exit
        elif op == 5:
            connection.commit()
            a = True
        ## Unknown
        else:
            print "Command not recognized."

def removeWord(self):
    rem = False
    while not a:
        print "1: Remove words"
        print "2: Save changes"
        print "3: Delete changes"
        print "4: Save changes and exit to main menu"
        print "5: Delete changes and exit to main menu"
        op = input('Select an option: ')
        ##  words functionality
        if op == 1:
            remBool = False
            while not remBool:
                removeWord = raw_input("Enter the word to remove or 'q' to go back: ")
                if removeWord == "q":
                    remBool = True
                else:
                    print "1: Sexual Word"
                    print "2: Violent Word"
                    print "3: Adult Content"
                    removeOption = input('Enter the number of the type of word you wish to remove:')
                    if removeOption == 1:
                        db.deleteSexualWord(removeWord)
                    elif removeOption == 2:
                        db.deleteViolentWord(removeWord)
                    elif removeOption == 3:
                        db.deleteAdultWord(removeWord)
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
## BEGIN OF EXECUTION
######################################################
checker = True
while checker:
    print "1: Rate a file"
    print "2: Add a word to the database"
    print "3: Remove a word from the database"
    print "4: Close program"
    option = input('Enter an options number: ')
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
                sexualList = db.getSexualWords()
                violentList = db.getViolentWords()
                adultList = db.getAdultWords()
                rater = FileRater(theFile, sexualList, violentList, adultList)
                rating = rater.calculateRating()
                ## print rating

    elif option == 2:
        addWord()

    elif option == 3:
        removeWord()

    elif option == 4:
        print "Have a nice day!"
        checker = False
    else:
        print "Unknown option"
