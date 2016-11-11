# namer.rb tests class Name and its operations
#
# Begun by: Dr. Jump, for CS 315 at King's College.
# Completed by: Robert Lowman
# Date: 11/10/2016
####################################################

require 'test/unit/assertions'   # needed for assert
include Test::Unit::Assertions
require './Name.rb'

def testName
   name = Names::Name.new("John", "Paul", "Jones")

   assert name.first == "John", "first failed"
   assert name.middle == "Paul", "middle failed"
   assert name.last == "Jones", "last failed"
   assert name.fullName == "John Paul Jones", "fullName failed"
   assert name.print == "John Paul Jones", "print failed"

   print "All tests passed!\n"
end

testName
