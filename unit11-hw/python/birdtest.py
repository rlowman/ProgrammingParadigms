# birdtest.rb | Tests out the menagerie of bird classes.
#
# Begun by: Dr. Jump for CS 315 at King's College.
# Completed by: Robert Lowman
# Date: 11/29/16
######################################################

import Duck
import Goose
import Owl
import Ostrich
import Kiwi
import Penguin
import Bird

bird0 = Bird.Bird('Hawkeye ')
bird0.printBird()

bird1 = Duck.Duck('Donald ')
bird1.printBird()

bird2 = Goose.Goose("Mother ")
bird2.printBird()

bird3 = Owl.Owl("Woodsey ")
bird3.printBird()

bird4 = Ostrich.Ostrich("Orville ")
bird4.printBird()

bird5 = Penguin.Penguin("Petey ")
bird5.printBird()

bird6 = Kiwi.Kiwi("Kenny ")
bird6.printBird()
