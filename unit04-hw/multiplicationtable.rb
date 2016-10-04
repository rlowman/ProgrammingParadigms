#! /usr/bin/ruby
# multiplicationtable.rb displays a table of logarithms
#
# Author: Robert Lowman
#
# Input:  The size of the multiplication table
# Precondition: The size must be greater than 0
# Output: A multiplication table of the given size


# Funtion that creates the multiplication table
# based on the given size
#
# Parameter: size The size of the multiplication table
# Precondition: size > 0
# Returns: void 
def DisplayTable(size)
  for i in 1..size
    for j in 1..size
      temp = i*j
      print "#{temp}\t"
    end
    puts " "
  end
end

# Where execution begins
if __FILE__ == $0
   print "Enter the size : "
  size = gets.chomp.to_i
  DisplayTable(size)
end
