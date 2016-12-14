## File: dbModule.py
## Accesses the database and handles I/O for the
##  given dadabase
##
## Name: Robert Lowman
## Due Date: 12/20/2016
import psycopg2

class dbHandler:

    def __init__(self, theConn):
        self.conn = theConn
        cur = theConn.cursor()
        cur.execute("SET search_path TO filerater")
        cur.close()

    def inWordTable(self, theWord):
        cur = self.conn.cursor()
        cur.execute("SELECT * FROM word WHERE string = %s", (theWord,))
        data = cur.fetchall()
        theId = -1
        if data:
            for row in data:
                theId = row[0]
        return theId

    def addSexualWord(self, theWord):
        cur = self.conn.cursor()
        cur.execute("SELECT * FROM sexual_word WHERE string = %s", (theWord,))
        data = cur.fetchall()
        if not data:
            wordId = self.inWordTable(theWord)
            if wordId < 0:
                cur.execute("INSERT INTO word VALUES (DEFAULT, %s)", (theWord,))
                wordId = self.inWordTable(theWord)
            query = ()
            cur.execute("INSERT INTO sexual_word VALUES (%s, %s)", (wordId, theWord))
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
        cur.execute("DELETE FROM sexual_word WHERE string = %s", (theWord,))
        result = cur.statusmessage
        returnValue = False
        if result.endswith('1'):
            returnValue = True
            cur.execute('SELECT * FROM adult_content WHERE string = %s UNION ' \
                'SELECT * FROM violent_word WHERE string = %s',(theWord, theWord))
            if not cur.fetchall():
                cur.execute("DELETE FROM word WHERE string = %s", (theWord,))
        cur.close()
        return returnValue

    def addViolentWord(self, theWord):
        cur = self.conn.cursor()
        cur.execute("SELECT * FROM violent_word WHERE string = %s", (theWord,))
        data = cur.fetchall()
        if not data:
            wordId = self.inWordTable(theWord)
            if wordId < 0:
                cur.execute("INSERT INTO word VALUES (DEFAULT, %s)", (theWord,))
                wordId = self.inWordTable(theWord)
            query = ()
            cur.execute("INSERT INTO violent_word VALUES (%s, %s)", (wordId, theWord))
            return True
        else:
            return False

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
        cur = self.conn.cursor()
        cur.execute("DELETE FROM violent_word WHERE string = %s", (theWord,))
        result = cur.statusmessage
        returnValue = False
        if result.endswith('1'):
            returnValue = True
            cur.execute('SELECT * FROM adult_content WHERE string = %s UNION ' \
                'SELECT * FROM sexual_word WHERE string = %s', (theWord, theWord))
            if not cur.fetchall():
                cur.execute("DELETE FROM word WHERE string = %s", (theWord,))
        cur.close()
        return returnValue

    def addAdultWord(self, theWord):
        cur = self.conn.cursor()
        cur.execute("SELECT * FROM adult_content WHERE string = %s", (theWord,))
        data = cur.fetchall()
        if not data:
            wordId = self.inWordTable(theWord)
            if wordId < 0:
                cur.execute("INSERT INTO word VALUES (DEFAULT, %s)", (theWord,))
                wordId = self.inWordTable(theWord)
            query = ()
            cur.execute("INSERT INTO adult_content VALUES (%s, %s)", (wordId, theWord))
            return True
        else:
            return False

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
        cur.execute("DELETE FROM adult_content WHERE string = %s", (theWord,))
        result = cur.statusmessage
        returnValue = False
        if result.endswith('1'):
            returnValue = True
            cur.execute('SELECT * FROM violent_word WHERE string = %s UNION ' \
                'SELECT * FROM sexual_word WHERE string = %s', (theWord, theWord))
            if not cur.fetchall():
                cur.execute("DELETE FROM word WHERE string = %s", (theWord,))
        cur.close()
        return returnValue
