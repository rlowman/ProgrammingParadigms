#! /usr/bin/ruby
# letterGrade.rb translates a 0-100 based numeric grade to letter grade
# Author: Robert Lowman
################################################################

# Input:  numeric grade based on 0-100 scale
# Precondition: The grade is bewteen 0-100
# Output: The corresponding letter grade for the given grade

def yearCode(grade)
  grade = grade / 10
  case grade
  when 10, 9
    puts 'A'
  when 8
    puts 'B'
  when 7
    puts 'C'
  when 6
    puts 'D'
  else
    puts 'F'
  end
end
    

if __FILE__ == $0
   print "Enter the numeric grade (0-100): "
   grade = gets
   print "Letter grade is: "
   puts yearCode(grade)
end
