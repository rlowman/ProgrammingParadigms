# namer.rb tests class Name and its operations
#
# Begun by: Dr. Jump, for CS 315 at King's College.
# Completed by: Robert Lowman
# Date: 11/3/2016
####################################################

require 'test/unit/assertions'   # needed for assert
include Test::Unit::Assertions

class Name

     def initialize(first, middle, last)
       @first, @middle, @last = first, middle, last
     end

     attr_accessor :first, :middle, :last

     def fullName()
       @first + " " + @middle + " " + @last
     end

     def print()
       puts fullName()
       return fullName()
     end

     def lfmi()
       return @last + ", " + @first + " " + @middle[0,1] + "."
     end
     
     def read()
       puts "Enter the name:\n"
       @first = gets
       @middle = gets
       @last = gets
     end
      
end


def testName
   name = Name.new("John", "Paul", "Jones")

   assert name.first == "John", "first failed"
   assert name.middle == "Paul", "middle failed"
   assert name.last == "Jones", "last failed"
   assert name.fullName == "John Paul Jones", "fullName failed"
   assert name.print == "John Paul Jones", "print failed"

   assert name.lfmi == "Jones, John P."

   name.first = "Robert"
   name.middle = "Craig"
   name.last = "Lowman"

   puts "Name after using mutators"
   assert name.print == "Robert Craig Lowman"

   name.read()

   print "Name read in: \n"
   puts name.fullName

   print "All tests passed!\n"
end

testName
