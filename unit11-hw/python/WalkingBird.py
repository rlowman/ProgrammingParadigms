# WalkingBird.py | Defines the WalkingBird class which inherits attributes and
#   methods from the Bird superclass.
#
# Completed by: Robert Lowman
# Date: 12/7/16
####################################################

import Bird

class WalkingBird(Bird.Bird):

    def __init__(self, name):
        super().__init__(name)

    def movement(self):
        return 'walked past'
