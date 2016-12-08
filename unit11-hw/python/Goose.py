# Goose.rb | Defines the Goose class which inherits attributes and methods
#   from the Bird superclass.
#
# Completed by: Robert Lowman
# Date: 12/6/16
####################################################
import FlyingBird

class Goose(FlyingBird.FlyingBird):

    def __init__(self, name):
        FlyingBird.__init__(name)
        self.name = name
        
    def call(self):
        return 'Honk!'

    def className(self):
        return 'Goose'
