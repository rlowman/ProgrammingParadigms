# average.rb averages the values of an array of doubles.
# Precondition: theArray is an array of numbers
# Output: the average of the values in theArray
#
# Begun by: Dr Jump for CS 315 at King's College
# Completed by: Robert Lowman
# Date: 10/11/2016
########################################################

################################################
# sum() sums the values in an array
# Receive: anArray, an array of numbers
# Return: the sum of the values in anArray.
################################################
def sum(anArray)
  if anArray.empty? then
    return 0.0
  else
    total = 0
    anArray.each {|i| total = total + i}
    return total
  end
end
  
################################################
# average() averages the values in an array
# Receive: anArray, an array of numbers
# Return: the average of the values in anArray.
################################################
def average(anArray)
  if anArray.empty? then
    return 0.0
  else
    return sum(anArray) / anArray.size
  end   
end

def main
  first = []
  second = [9.0, 8.0, 7.0, 6.0]

  puts "first sum is: #{ sum(first) }\n"
  puts "second sum is: #{ sum(second) }\n"

  puts "first average is: #{ average(first) }\n"
  puts "second average is: #{ average(second) }\n"
end

main
