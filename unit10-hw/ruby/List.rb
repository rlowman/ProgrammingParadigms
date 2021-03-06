# List.rb implements a linked list structure in Ruby.
#
# Begun by: Dr. Jump, CS 315 at King's College
# Completed by: Robert Lowman
# Date: 11/29/2016
#######################################################

require 'test/unit/assertions'
include Test::Unit::Assertions

class List

   # initialize a List to be empty
   # Postcondition: first == nil and last == nil and length == 0

   # Replace this line with a List constructor definition
   def initialize
     @first = nil
     @length = 0
     @last = nil
   end


   # create reader method for length
   def getLength()
     return @length
   end

   # Am I empty?
   # Return: length == 0
   def empty?
      @length == 0
   end

   # append a value to me
   # Receive: value, the item to be appended
   # Postcondition: my last item is value and
   #                 my length is one more than it was
   def append(value)
      newNode = Node.new(value, nil)

      if empty?
         @first = newNode
      else
         @last.next = newNode
      end

      @last = newNode
      @length += 1
      self
   end


   # print my items
   # Postcondition: my items have been displayed to the screen
   def print
     temp = @first
     while !temp.nil?
       printf " #{temp.value}"
       temp = temp.next
     end
   end


   # find my maximum item
   # Return: my maximum item
   def max
     temp = @first
     maxValue = -999999
     while !temp.nil?
       if temp.value > maxValue then
         maxValue = temp.value
       end
       temp = temp.next
     end
     return maxValue
   end

   # find my maximum item
   # Return: my maximum item
   def search(value)
     temp = @first
     returnValue = -1
     count = 0;
     while (!temp.nil?) && (returnValue < 0)
       if temp.value == value then
         returnValue = count
       end
       temp = temp.next
       count = count + 1
     end
     return returnValue
   end


   class Node
      def initialize(item, link)
         @value = item
         @next = link
      end

      attr_reader :value
      attr_accessor :next
   end

end
