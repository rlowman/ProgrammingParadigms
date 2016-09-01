#! /usr/bin/ruby
################################################################
# CircleArea.rb
# Computes the area of a circle.
#
# Input: The radius of a circle.
# Precondition: The radius is a positive number.
# Output: The area of the circle.
#
# Begun by Dr Jump for CS 315 at King's College
# Completed by: Robert Lowman
# Date: 9/1/16
################################################################

PI = 3.1415927 #Creates and defines a constant, in this case representing pi

# Function that computes the area of a circle.
#
# Parameter: radius The radius of the circle.
# Precondition: r > 0.
# Returns: The area of the circle.
def computeArea(r) #Call to create function computeArea with parameter r
  PI * r ** 2 #Calculates the area using parameter r and constant pi
end #ends the function to find area

# Where execution begins
if __FILE__ == $0 #From what I understand, if the File was ran directly, then
  #add scripts to the directory that holds the current directly 
  print "Enter the radius: " #Print the string to ask user for radius
  radius = gets.chomp.to_f #Takes in the float input value from user
  print "Area is: " #Prints string to explain what the output is
  puts computeArea(radius) #Runs the function using input, prints out result
end #Ends execution
