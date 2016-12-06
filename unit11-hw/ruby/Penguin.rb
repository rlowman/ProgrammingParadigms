# Penguin.rb | Defines the Penguin class which inherits attributes and methods
#   from the Bird superclass.
#
# Completed by: Robert Lowman
# Date: 12/5/16
####################################################

require_relative 'WalkingBird.rb'

class Penguin < WalkingBird

  def call
    'Huh-huh-huh-huuuuh'
  end

end
