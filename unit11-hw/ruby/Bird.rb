# Bird.rb | Defines a Bird superclass to be extended by specific bird
#   sub-classes.
#
# Begun by: Dr. Jump, for CS 315 at King's College.
# Completed by: Robert Lowman
# Date: 11/29/2016
####################################################

class Bird
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def call
    'Squaaaaaaawk!'
  end

  def className
    self.class.to_s
  end

  def movement
    'did bird-things'
  end

  def print
    puts name + className + " just " + movement + " and said " + call
  end

end
