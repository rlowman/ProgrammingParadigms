class PorterStemmer:

    def stripWord(word):
        filler = 0
        word = step1a(word)
        if len(word) > 2:
            if len(word) >= 1:
                word = self.step1b(word)
            if len(word) >= 1:
				word = self.step1c(word)
            if len(word) >= 1:
				word = self.step2(word)
            if len(word) >= 1:
                word = self.step3(word)
            if len(word) >= 1:
                word = self.step4(word)
            if len(word) >= 1:
                word = self.step5(word)
            return word

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
            if (not self.isVowel(word[length-1], word[length-2]) and
                    word[length-1] != 'w' and
                    word[length-1] != 'x' and
                    word[length-1] != 'y' and
                    self.isVowel(word[length-2], word[length-3])):
                if length == 3:
                    if not isVowel(word[0], ' '):
                        returnValue = True
                elif not self.isVowel(word[length-3], word[length-4]):
                    returnValue = True
        return returnValue

    def doubleConstant(self, stem, suffixLength):
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
            if not self.isVowel(second, third):
                returnValue = True
        return returnValue

    def getMeasure(self, word, suffixLength):
        i = 0
        m = 0
        length = len(word) - suffixLength
        done = False
        ## Determines how many consanants are at the
        ##      start of the word
        while i < length and not done:
            if i > 0 :
                if self.isVowel(word[i], word[i-1]):
                    done = True
            elif self.isVowel(word[i], ' '):
                done = True
            if not done:
                i = i + 1

        ## Determine the actual measure
        while i < length:
            foundCon = False
            while i < length and not foundCon:
                if i > 0:
                    if not self.isVowel(word[i], word[i-1]):
                        foundCon = True
                elif not self.isVowel(word[i], ' '):
                    foundCon = True
                if not foundCon:
                    i = i + 1

            foundVowel = False
            currentIsCon = False
            while i < length and not foundVowel:
                if i > 0:
	    		    if self.isVowel(word[i], word[i-1]):
	    			    foundVowel = true
                elif self.isVowel(word[i],' '):
	    		    foundVowel = True
                if not foundVowel:
                    currentIsCon = True
                i = i + 1
            if foundCon and (foundVowel or currentIsCon):
                m = m + 1
        return m

    def containsVowel(stem, suffixLength):
        length = len(stem) - suffixLength
        returnValue = False
        index = 0;
        while index < length and not returnValue:
            previous = ' '
            if index > 0:
                previous = stem[index - 1]
            if self.isVowel(stem[index], previous):
                returnValue = True
            index = index + 1

    def step1a(word):
        length = len(word)
        returnValue = word
        if word.endswith("s"):
            if word.endswith("sses") or word.endswith("ies"):
                returnValue = word[:length-2]
            elif not word.endswith("ss"):
                returnValue = word[:length-1]
        return returnValue

    def step1b(word):
        length = len(word)
        returnValue = word
        if word.endswith("eed"):
            if self.getMeasure(word, 3) > 0:
                returnValue = word[:length-1]
        elif word.endswith("ing"):
            if self.containsVowel(word, 3):
                returnValue = self.step1Fixer(word[:length-3])
        elif word.enswith("ed"):
            if self.containsVowel(word, 2):
                returnValue = self.step1Fixer(word[:length-2])
        return returnValue

    ## Helps step1 of the algorithm
    ##
    ## Receive: word, the word to strip
    ## Return: the revised word
    def step1Fixer(word):
        length = len(word)
        returnValue = word
        if word.endswith("at") or word.endswith("bl") or word.endswith("iz"):
            returnValue = word + "e"
        elif self.doubleConstant(word, 0):
            if not (word.endswith("l") or word.endswith("s") or
                word.endswith("z")):
                returnValue = word[:length-1]
        elif self.getMeasure(word, 0) == 1 and self.isCvc(word, 0):
            returnValue = word + "e"
        return returnValue

    ## Step1c of the algorithm
    ##
    ## Receive: word, the word to strip
    ## Return: the revised word
    def step1c(word):
        length = len(word)
        returnValue = word
        if self.containsVowel(word, 1) and word.endswith("y"):
            returnValue = word[:length-1]
            returnValue = returnValue + "i"
        return returnValue

    ## Step2 of the algorithm
    ##
    ## Receive: word, the word to strip
    ## Return: the revised word
    def step2(word):
        length = len(word)
        returnValue = word
        if word.endswith("ational") or word.endswith("ization"):
            if self.getMeasure(word, 7) > 0:
                returnValue = word[:length-5]
                returnValue = returnValue + "e"
        elif (word.endswith("iveness") or word.endswith("fulness") or
                word.endswith("ousness")):
            if self.getMeasure(word, 7) > 0:
                returnValue = word[:length-4]
        elif word.endswith("tional"):
            if self.getMeasure(word, 6):
                returnValue = word[:length-2]
        elif word.endswith("biliti"):
            if self.getMeasure(word, 6) > 0:
                returnValue = word[:length-5]
                returnValue = returnValue + "le"
        elif word.endswith("entli") or word.endswith("ousli"):
            if self.getMeasure(word, 5) > 0:
                returnValue = word[:length-2]
        elif word.endswith("ation") or word.endswith("iviti"):
            if self.getMeasure(word, 5) > 0:
                returnValue = word[:length-3]
                returnValue = returnValue + "e"
        elif word.endswith("alism") or word.endswith("aliti"):
            if self.getMeasure(word, 5) > 0:
                returnValue = word[:length-3]
        elif (word.endswith("enci") or word.endswith("anci") or
                word.endswith("abli")):
            if self.getMeasure(word, 4) > 0:
                returnValue = word[:length-1]
                returnValue = returnValue + "e"
        elif word.endswith("izer"):
            if self.getMeasure(word, 4) > 0:
                returnValue = word[:length-1]
        elif word.endswith("alli"):
            if self.getMeasure(word, 4) > 0:
                returnValue = word[:length-2]
        elif word.endswith("ator"):
            if self.getMeasure(word, 4) > 0:
                returnValue = word[:length-2]
                returnValue = returnValue + "e"
        elif word.endswith("eli"):
            if self.getMeasure(word, 3) > 0:
                returnValue = word[:length-2]
        return returnValue

    ## Step3 of the algorithm
    ##
    ## Receive: word, the word to strip
    ## Return: the revised word
    def step3(word):
        length = len(word)
        returnValue = word
        if (word.endswith("icate") or word.endswith("alize")
            or word.endswith("iciti")):
            if self.getMeasure(word, 5) > 0:
                returnValue = word[:length-3]
        elif word.endswith("ative"):
            if self.getMeasure(word, 5) > 0:
                returnValue = word[:length-5]
        elif word.endswith("ical"):
            if self.getMeasure(word, 4) > 0:
                returnValue = word[:length-2]
        elif word.endswith("ness"):
            if self.getMeasure(word, 4) > 0:
                returnValue = word[:length-4]
        elif word.endswith("ful"):
            if self.getMeasure(word, 3) > 0:
                returnValue = word[:length-3]
        return returnValue

    ## Step4 of the algorithm
    ##
    ## Receive: word, the word to strip
    ## Return: the revised word
    def step4(word):
        length = len(word)
        returnValue = word
        if word.endswith("ement"):
            if self.getMeasure(word, 5) > 1:
                returnValue = word[:length-5]
        elif(word.endsWith("ance") or word.endswith("ence") or
				word.endsWith("able") or word.endswith("ible") or
				word.endsWith("ment")):
			if self.getMeasure(word, 4) > 1:
				returnValue = word[:length-4]
        elif word.endswith("tion") or word.endswith("sion"):
			if self.getMeasure(word, 3) > 1:
				returnValue = word[:length-3]
        elif(word.endswith("ism") or word.endswith("ant") or
				word.endswith("ent") or word.endswith("ate") or
				word.endswith("iti") or word.endswith("ous") or
				word.endswith("ive") or word.endswith("ize")):
			if self.getMeasure(word, 3) > 1:
				returnValue = word[:length - 3]
        elif (word.endswith("al") or word.endswith("er") or word.endswith("ic")
				or word.endswith("ou")):
			if self.getMeasure(word, 2) > 1:
				returnValue = word[:length - 2]
        return returnValue

    ## Step5 of the algorithm
    ##
    ## Receive: word, the word to strip
    ## Return: the final word
    def step5(word):
        length = len(word)
        returnValue = word
        if word.endswith("e"):
			if self.getMeasure(word, 1) > 1:
				returnValue = word[:length - 1]
				length = length - 1
			elif self.getMeasure(word, 1) == 1:
				if not self.isCvc(word, 1):
					returnValue = word[:length - 1]
					length = length - 1
        if (self.getMeasure(word, 0) > 1 and word.endsWith("l") and
            self.doubleConstant(word, 0)):
			returnValue = word[:length - 1]
        return returnValue
