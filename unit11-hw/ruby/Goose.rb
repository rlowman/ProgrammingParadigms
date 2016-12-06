# Goose.rb | Defines the Goose class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Jump for CS 315 at King's College.
# Completed by: Robert Lowman
# Date: 11/29/16
####################################################

require_relative 'FlyingBird.rb'

class Goose < FlyingBird

  def call
    'Honk!'
  end

end
