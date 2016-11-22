import mySQLdb
import dbModule
import fileHandler

print "1: Rate a file"
print "2: Add a word to the database"
print "3: Remove a word from the database"
print "4: Close program"
option = input('Enter an options number: ')
checker = True

connection = mySQLdb.connect(host = 'vps.kings-cs.com', user = 'robertlowman'
    passwd = 'patriots8', db = "robertlowman")
db = dbModule(connection)

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
                sexualList = db.getSexualWords()
                violentList = db.getViolentWords()
                adultList = db.getAdultWords()
                rater = FileRater(theFile, sexualList, violentList, adultList)
                rating = rater.calculateRating()
                ## print rating

    elif option == 2:
        addWord = raw_input('Enter the word to add: ')
        print "1: Sexual Word"
        print "2: Violent Word"
        print "3: Adult Content"
        addOption = input('Enter the number of the type of word you wish to add: ')
        if addOption == 1:
            db.addSexualWord(addWord)
        elif addOption == 2:
            db.addViolentWord(addWord)
        elif addOption == 3:
            db.addAdultWord(addWord)
        else :
            print "Command not recognized"

    elif option == 3:
        removeWord = raw_input('Enter the word to add:')
        print "1: Sexual Word"
        print "2: Violent Word"
        print "3: Adult Content"
        remveOption = input('Enter the number of the type of word you wish to remove')
        if removeOption == 1:
            db.deleteSexualWord(removeWord)
        elif removeOption == 2:
            db.deleteViolentWord(removeWord)
        elif removeOption == 3:
            db.deleteAdultWord(removeWord)
        else :
            print "Command not recognized"

    elif option == 4:
        print "Have a nice day!"
        checker = False
    else:
        print "Unknown option"
