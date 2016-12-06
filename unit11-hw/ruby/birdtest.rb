# birdtest.rb | Tests out the menagerie of bird classes.
#
# Begun by: Dr. Jump for CS 315 at King's College.
# Completed by: Robert Lowman
# Date: 11/29/16
######################################################

require_relative 'Duck.rb'
require_relative 'Goose.rb'
require_relative 'Owl.rb'
require_relative 'Ostrich.rb'
require_relative 'Kiwi.rb'
require_relative 'Penguin.rb'

bird0 = Bird.new "Hawkeye "
bird0.print

bird1 = Duck.new "Donald "
bird1.print

bird2 = Goose.new "Mother "
bird2.print

bird3 = Owl.new "Woodsey "
bird3.print

bird4 = Ostrich.new "Orville "
bird4.print

bird5 = Penguin.new "Petey "
bird5.print

bird6 = Kiwi.new "Kenny "
bird6.print
