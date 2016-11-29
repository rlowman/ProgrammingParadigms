# birdtest.rb | Tests out the menagerie of bird classes.
#
# Begun by: Dr. Jump for CS 315 at King's College.
# Completed by:
# Date: 
######################################################

require_relative 'Duck.rb'
require_relative 'Goose.rb'
require_relative 'Owl.rb'

bird0 = Bird.new "Hawkeye"
bird0.print

bird1 = Duck.new "Donald"
bird1.print

bird2 = Goose.new "Mother"
bird2.print

bird3 = Owl.new "Woodsey"
bird3.print
