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
  if freshman
    1
  else
    if sophomore
      2
    else
      if junior
        3
      else
        if senior
          4
        else
          0
        end
      end
    end
  end
end

if __FILE__ == $0
   print "Enter the year: "
   year = gets
   print "Numeric code is: "
   puts yearCode(year)
end
