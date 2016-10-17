# hw06.rb recieves the size to make an array and doubles
#  to fill this array and then prints its contents
# Precondition: size > 0
# Output: the values in theArray
#
# Completed by: Robert Lowman
# Date: 10/17/2016
########################################################

################################################
# read() reads in an array of doubles
# Receive: anArray, an array of correct size
#          itsSize, the size of the given array
################################################
def read(anArray, itsSize)
  for i in 1..itsSize
    temp = gets.chomp.to_f
    anArray[i] = temp
  end 
end
  
################################################
# print() prints the given array it receives
# Receive: anArray, an array of numbers
#          itsSize, the size of the given array
################################################
def printArray(anArray, itsSize)
  for i in 1..itsSize
    puts "#{anArray[i]}\n"
  end
end

def main
  puts "Enter size of array"
  size = gets.chomp.to_i
  puts "Enter that many doubles"
  first = Array.new(size)
  read(first, size);
  puts "Results: "
  printArray(first, size);
end

main
