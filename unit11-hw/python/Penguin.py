# Penguin.py | Defines the Penguin class which inherits attributes and methods
#   from the Bird superclass.
#
# Completed by: Robert Lowman
# Date: 12/7/16
####################################################
import WalkingBird

class Penguin(WalkingBird.WalkingBird):

    def __init__(self, name):
        WalkingBird.__init__(name)
        self.name = name

    def call(self):
        return 'Huh-huh-huh-huuuuh'

    def className(self):
        return 'Penguin'
