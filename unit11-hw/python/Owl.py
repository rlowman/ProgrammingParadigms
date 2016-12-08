# Owl.py | Defines the Owl class which inherits attributes and methods
#   from the Bird superclass.
#
# Completed by: Robert Lowman
# Date: 12/7/16
####################################################
import FlyingBird

class Owl(FlyingBird.FlyingBird):

    def __init__(self, name):
        FlyingBird.__init__(name)
        self.name = name

    def call(self):
        return 'Hoot!'

    def className(self):
        return 'Owl'
