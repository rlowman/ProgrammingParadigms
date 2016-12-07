class PorterStemmer:

    def stripWord(word):
        word = step1a(word)

    def isVowel(letter, previous):
        returnValue = False
        if (letter == 'a' or letter == 'e' or letter == 'i' or
                letter == 'o' or letter == 'u'):
            returnValue = True
        elif (letter == 'y' and previous != 'a' and previous != 'e' and \
                previous != 'i' and previous != 'o' and previous != 'u' and
                previous != ' '):
            returnValue = True
        return returnValue

    def isCvc(word, suffixLength):
        length = len(word) - suffixLength
        returnValue = False
        if length >= 3:
            if (not isVowel(word[length-1], word[length-2]) and
                    word[length-1] != 'w' and
                    word[length-1] != 'x' and
                    word[length-1] != 'y' and
                    isVowel(word[length-2], word[length-3])):
                if length == 3:
                    if not isVowel(word[0], ' '):
                        returnValue = True
                elif not isVowel(word[length-3], word[length-4]):
                    returnValue = True
        return returnValue

    def doubleConstant(stem, suffixLength):
        length = len(stem) - suffixLength
        returnValue = False
        last = stem[length-1]
        second = ' '
        if length > 1:
            second = stem[length-2]
        third = ' '
        if length > 2:
            third = stem[length-3]
        if last == second:
            if not isVowel(second, third):
                returnValue = True
        return returnValue    

    def getMeasure(word, suffixLength):
        i = 0
        m = 0
        length = len(word) - suffixLength
        done = False
        ## Determines how many consanants are at the
        ##      start of the word
        while i < length and not done:
            if i > 0 :
                if isVowel(word[i], word[i-1]):
                    done = True
            elif isVowel(word[i], ' '):
                done = True
            if not done:
                i++

        ## Determine the actual measure
        while i < length
            foundCon = False
            while i < length and not foundCon:
                if i > 0:
                    if not isVowel(word[i], word[i-1]):
                        foundCon = True
                elif not isVowel(word[i], ' '):
                    foundCon = True
                if not foundCon:
                    i ++

            foundVowel = False
            currentIsCon = False
            while i < length and not foundVowel:
                if i > 0:
	    		    if isVowel(word[i], word[i-1]):
	    			    foundVowel = true
                elif isVowel(word[i],' '):
	    		    foundVowel = True
	    	    if not foundVowel:
	    		    currentIsCon = True
                i ++
            if foundCon and (foundVowel or currentIsCon):
                m ++
        return m
