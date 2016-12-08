## File: dbModule.py
## Accesses the database and handles I/O for the
##  given dadabase
##
## Name: Robert Lowman
## Due Date: 12/20/2016
import psycopg2

class dbHandler:

    def __init__(self, theConn):
        self.cur = theConn.cursor()
        self.cur.execute("SET search_path TO filerater")

    def inWordTable(self, theWord):
        executeString = "SELECT word_id FROM word WHERE string = " + "'" + theWord + "'"
        self.cur.execute(executeString)
        data = self.cur.fetchall()
        theId = -1
        if data:
            for row in data:
                theId = row[0]
        return theId

    def addSexualWord(self, theWord):
        executeString = "SELECT * FROM sexual_word WHERE string = " + "'" + theWord + "'"
        self.cur.execute()
        data = self.cur.fetchall()
        if not data:
            wordId = self.inWordTable(theWord)
            if wordId < 0:
                query = ("INSERT INTO word VALUES (DEFAULT, '%s')")
                self.cur.execute(query, '%s' % wordId)
            query = ('INSERT INTO sexual_word VALUES (%s, %s)')
            self.cur.execute(query, (wordId, theWord))
            return True
        else:
            return False

    def getSexualWords(self):
        cur.execute("SELECT string FROM sexual_word")
        data = cur.fetchall()
        wordList = []
        for row in data:
            wordList.append(row[0])
        cur.close()
        return wordlist

    def deleteSexualWord(self, theWord):
        cur = self.conn.cursor()
        query = ("DELETE FROM sexual_word WHERE string = %s")
        cur.execute(query, theWord)
        cur.close()
        ## Return if word was deleted or not

    def addViolentWord(self, theWord):
        ## Need to implement what to do with word already in the system
        ## Adds word to word table multiple times (Not intentional)
        query = ("INSERT INTO word VALUES (DEFAULT, %s)")
        cur.execute(query, theWord)
        query = ("SELECT word_id FROM word WHERE string = %s")
        cur.execute(query, theWord)
        data = cur.fetchall()
        theId = 0
        for row in data:
            theId = row[0]
        query = ("INSERT INTO violent_word VALUES (%s, %s)")
        param = (theId, theWord)
        cur.execute(query, param)

    def getViolentWords(self):
        cur = self.conn.curser()
        cur.execute("SELECT string FROM violent_word")
        data = cur.fetchall()
        wordList = []
        for row in data:
            wordList.append(row[0])
        cur.close()
        return wordList

    def deleteViolentWord(self, theWord):
        cur = conn.cursor()
        query = ("DELETE FROM violent_word WHERE string = %s")
        cur.execute(query, theWord)
        cur.close()
        ## Return if word was deleted or not

    def addAdultWord(self, theWord):
        ## Need to implement what to do with word already in the system
        ## Adds word to word table multiple times (Not intentional)
        query = ("INSERT INTO word VALUES (DEFAULT, %s)")
        cur.execute(query, theWord)
        query = ("SELECT word_id FROM word WHERE string = %s")
        cur.execute(query, theWord)
        data = cur.fetchall()
        theId = 0
        for row in data:
            theId = row[0]
        query = ("INSERT INTO adult_content VALUES (%s, %s)")
        param = (theId, theWord)
        cur.execute(query, param)

    def getAdultWords(self):
        cur = self.conn.curser()
        cur.execute("SELECT string FROM adult_content")
        data = cur.fetchall()
        wordList = []
        for row in data:
            wordList.append(row[0])
        cur.close()
        return wordList

    def deleteAdultWord(self, theWord):
        cur = self.conn.cursor()
        query = ("DELETE FROM adult_content WHERE string = %s")
        cur.execute(query, theWord)
        cur.close()
        ## Return if word was deleted or not
