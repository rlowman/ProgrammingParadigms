# Owl.rb | Defines the Owl class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Jump for CS 315 at King's College.
# Completed by: Robert Lowman
# Date: 11/29/16
####################################################

require_relative 'Bird.rb'

class Owl < Bird

  def call
    'Whoo-hoo'
  end

end
