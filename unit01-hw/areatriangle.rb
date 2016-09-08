#! /usr/bin/ruby
################################################################
# CircleArea.rb
# Computes the area of a triangle.
#
# Input: The height of a triangle.
# Input: The width of a triangle.
# Precondition: The height is a positive number.
# Precondition: The width is a positive number.
# Output: The area of the triangle.
#
# Completed by: Robert Lowman
# Date: 9/7/16
################################################################

HALF = 0.5

# Function that computes the area of a triangle.
#
# Parameter: height The height of the triangle.
# Parameter: width The width of the triangle.
# Precondition: h > 0.
# Precondition: w > 0.
# Returns: The area of the triangle.
def computeArea(h, w) # define a function with 2 parameters
  HALF * h * w # calculate area of triangle
end # end function

# Where execution begins
if __FILE__ == $0 # If file can be read, continue
  print "Enter the height: " # print string
  height = gets.chomp.to_f # get data from keyboard and set to height
  print "Enter the width: " # print string
  width = gets.chomp.to_f # get data from keyboard and set to width
  print "Area is: "  # print string
  puts computeArea(height, width) # print return value from function
end # end execution
