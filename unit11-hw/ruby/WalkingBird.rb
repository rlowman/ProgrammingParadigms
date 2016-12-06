# WalkingBird.rb | Defines the WalkingBird class which inherits attributes and
#   methods from the Bird superclass.
#
# Completed by: Robert Lowman
# Date: 12/5/16
####################################################

require_relative 'Bird.rb'

class WalkingBird < Bird

  def movement
    'walked past'
  end

end
