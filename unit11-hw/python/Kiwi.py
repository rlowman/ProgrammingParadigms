# Kiwi.py | Defines the Kiwi class which inherits attributes and methods
#   from the Bird superclass.
#
# Completed by: Robert Lowman
# Date: 12/6/16
####################################################
import WalkingBird

class Kiwi(WalkingBird.WalkingBird):

    def __init__(self, name):
        WalkingBird.__init__(name)
        self.name = name
        
    def call(self):
        return 'Twee-do!'

    def className(self):
        return 'Kiwi'
