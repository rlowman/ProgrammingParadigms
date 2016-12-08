# Ostrich.py | Defines the Ostrich class which inherits attributes and methods
#   from the Bird superclass.
#
# Completed by: Robert Lowman
# Date: 12/5/16
####################################################
import WalkingBird

class Ostrich(WalkingBird.WalkingBird):

    def __init__(self, name):
        WalkingBird.__init__(name)
        self.name = name

    def call(self):
        return 'Snork!'

    def className(self):
        return 'Ostrich'
