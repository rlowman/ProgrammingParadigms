# FlyingBird.py | Defines the FlyingBird class which inherits attributes and
#   methods from the Bird superclass.
#
# Completed by: Robert Lowman
# Date: 12/6/16
####################################################

import Bird

class FlyingBird(Bird.Bird):

    def __init__(self, name):
        super().__init__(name)

    def movement(self):
        return 'flew past'
