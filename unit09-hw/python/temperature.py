## File: Temperature.py
## Holds information about a temperature
##
## Author: Robert Lowman
## Date: 12/5/2016
class Temperature:

    ## Constructor method for class Temperature
    ##
    ## Receive: theDegrees, the degrees of the temperature
    ##          theScale, the scale of the temperature
    ## Return: new instance of Temperature
    def __init__(self, theDegrees, theScale):
        if self.validate(theScale, theDegrees):
            self.degrees = theDegrees
            self.scale = theScale

    ## Converts the current Temperature to Fahrenheit.
    ##
    ## Return: the current Temperature as Fahrenheit.
    def getFahrenheit(self):
        if self.scale == 'F':
            return self
        elif self.scale == 'C':
            return Temperature(self.convertCtoF(self.degrees), 'F')
        elif self.scale == 'K':
            return Temperature(self.convertKtoF(self.degrees), 'F')

    ## Converts the current Temperature to Celsius.
    ##
    ## Return: the current Temperature as Celsius.
    def getCelsius(self):
        if self.scale == 'C':
            return self
        elif self.scale == 'F':
            return Temperature(self.convertFtoC(self.degrees), 'C')
        elif self.scale == 'K':
            return Temperature(self.convertKtoC(self.degrees), 'C')

    ## Converts the current Temperature to Kelvin.
    ##
    ## Return: the current Temperature as Kelvin.
    def getKelvin(self):
        if self.scale == 'K':
            return self
        elif self.scale == 'C':
            return Temperature(self.convertCtoK(self.degrees), 'K')
        elif self.scale == 'F':
            return Temperature(self.convertFtoK(self.degrees), 'K')

    ## Creates a new Temperature from input
    ##
    ## Return: newly created Temperature
    def createTemperature(self):
        deg = input('Enter the degrees: ')
        s = raw_input('Enter the scale: ')
        s.upper()
        if not self.validate(s, deg):
            return None
        else:
            return Temperature(deg, s)

    ## Checks if given Temperature is equivalent to current Temperature
    ##
    ## Receive: compare, the Temperature to compare
    ## Return: if the given Temperature is equal
    def equals(self, compare):
        if self.getFahrenheit().degrees == compare.getFahrenheit().degrees:
            return True
        else:
            return False

    ## Checks if given Temperature is less than current Temperature
    ##
    ## Receive: compare, the Temperature to compare
    ## Return: if the given Temperature is less than
    def lessThan(self, compare):
        if self.getFahrenheit().degrees < compare.getFahrenheit().degrees:
            return True
        else:
            return False

    ## Prints the information about the current Temperature
    ##
    ## Output: the current Temperature information
    def printTemperature(self):
        print self.degrees, self.scale,

    ## Lowers the current Temperature by the given amount
    ##
    ## Receive: theDegrees, the amount to lower the Temperature by
    ## Return: the new degrees with adjusted degrees
    def lower(self, theDegrees):
        return Temperature(self.degrees - theDegrees, self.scale)

    ## Raises the current Temperature by the given amount
    ##
    ## Receive: theDegrees, the amount to raise the Temperature by
    ## Return: the new degrees with adjusted degrees
    def raiseTemperature(self, theDegrees):
        return Temperature(self.degrees + theDegrees, self.scale)


    ## Validates the current information
    ##
    ## Receive: theScale, the scale variable to check
    ##          theDegrees, the degress to check
    ## Return: if the information is valid or not
    def validate(self, theScale, theDegrees):
        if ((theScale == 'K' or theScale == 'C' or theScale == 'F') and
            theDegrees is not None):
            return True
        else:
            return False

    ## Converts the given Fahrenheit degrees to Celsius
    ##
    ## Receive: theDegrees, the degrees to convert
    ## Return: the given Fahrenheit degrees as Celsius
    def convertFtoC(self, theDegrees):
        return (theDegrees - 32.0) * (5/9)

    ## Converts the given Fahrenheit degrees to Kelvin
    ##
    ## Receive: theDegrees, the degrees to convert
    ## Return: the given Fahrenheit degrees as Kelvin
    def convertFtoK(self, theDegrees):
        return self.convertFtoC(theDegrees) + 273.15

    ## Converts the given Celsius degrees to Fahrenheit
    ##
    ## Receive: theDegrees, the degrees to convert
    ## Return: the given Celsius degrees as Fahrenheit
    def convertCtoF(self, theDegrees):
        return (theDegrees * (9/5)) + 32.0

    ## Converts the given Celsius degrees to Kelvin
    ##
    ## Receive: theDegrees, the degrees to convert
    ## Return: the given Celsius degrees as Kelvin
    def convertCtoK(self, theDegrees):
        return theDegrees + 273.15

    ## Converts the given Kelvin degrees to Fahrenheit
    ##
    ## Receive: theDegrees, the degrees to convert
    ## Return: the given Kelvin degrees as Fahrenheit
    def convertKtoF(self, theDegrees):
        return (self.convertKtoC(theDegrees) * (9/5)) + 32.0


    ## Converts the given Kelvin degrees to Celsius
    ##
    ## Receive: theDegrees, the degrees to convert
    ## Return: the given Kelvin degrees as Celsius
    def convertKtoC(self, theDegrees):
        return theDegrees - 273.15
