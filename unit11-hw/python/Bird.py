# Bird.py | Defines a Bird superclass to be extended by specific bird
#   sub-classes.
#
# Completed by: Robert Lowman
# Date: 12/6/2016
####################################################

class Bird:

  def __init__(self, theName):
    self.name = theName

  def call(self):
    return 'Squaaaaaaawk!'

  def getName(self):
      return self.name

  def className(self):
    return 'Bird'

  def movement(self):
    return 'did bird-things'

  def printBird(self):
    print self.getName() + self.className() + " just " + self.movement() + " and said " + self.call()
