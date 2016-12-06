# Ostrich.rb | Defines the Ostrich class which inherits attributes and methods
#   from the Bird superclass.
#
# Completed by: Robert Lowman
# Date: 12/5/16
####################################################

require_relative 'WalkingBird.rb'

class Ostrich < WalkingBird

  def call
    'Snork'
  end

end
