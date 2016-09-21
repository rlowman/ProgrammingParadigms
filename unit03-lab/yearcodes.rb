#! /usr/bin/ruby
# yearcodes.rb translates an academic year into a numeric code
# Begun by: Dr. Jump for CS 315 at King's College
# Finished by: Robert Lowman
################################################################

# Input:  The name of an academic year
# Precondition: The academic year is a string with a value of freshman,
#   sophomore, junior or senior
# Output: The corresponding integer code for the given academic year

def yearCode(year)
  if year =~ /freshman/ then
    1
  elsif year =~ /sophomore/ then
    2
  elsif year =~ /junior/ then
    3
  elsif year =~ /senior/ then
    4
  else
    0
  end
end
    

if __FILE__ == $0
   print "Enter the year: "
   year = gets
   print "Numeric code is: "
   puts yearCode(year)
end
