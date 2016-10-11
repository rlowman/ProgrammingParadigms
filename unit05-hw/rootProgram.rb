# rootProgram.rb finds the roots of an equation.
#
# Input: a b c values for the quadratic formula
# Output: The roots of the equation
#
# Completed by: Robert Lowman
# Date: 10/10/16
#################################################################


# quadraticRoots() finds the roots from the given values
# Receive: a The a value in the quadratic formula
#          b The b value in the quadratic formula
#          c The c value in the quadratic formula

# Return: the two roots of the equation
######################################################

# Replace this with the implementation of your split function
def quadraticRoots(a, b, c)
  if a != 0 then
    arg = b ** 2 - 4 * a * c
    if arg >= 0 then
      [1,
       (((b * -1) + Math.sqrt(arg)) / (2*a)),
       (((b * -1) - Math.sqrt(arg)) / (2*a))]
    else
      print "\n*** quadraticRoots(): b^2 -4ac is negative!\n"
      [0,0,0]
    end
  else
    print "\n*** quadraticRoots(): a is zero!\n"
    [0,0,0]
  end  
end

if __FILE__ == $0
  print "Enter a: "
  a = gets.to_f
  print "Enter b: "
  b = gets.to_f
  print "Enter a: "
  c = gets.to_f 
  split_string = quadraticRoots(a, b, c)
  if split_string[0] == 1 then
    puts "The first part is #{split_string[1]}"
    puts "and the second part is #{split_string[2]}"
  end
end
