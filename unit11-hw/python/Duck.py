# Duck.py | Defines the Duck class which inherits attributes and methods
#   from the Bird superclass.
#
# Completed by: Robert Lowman
# Date: 12/6/16
####################################################
import FlyingBird

class Duck(FlyingBird.FlyingBird):

    def __init__(self, name):
        FlyingBird.__init__(name)
        self.name = name

    def call(self):
        return 'Quack!'

    def className(self):
        return 'Duck'
