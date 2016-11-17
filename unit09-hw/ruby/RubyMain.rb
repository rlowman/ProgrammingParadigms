# RubyMain.rb tests class Temperature and its operations
#
# Completed by: Robert Lowman
# Date: 11/14/2016
####################################################

require 'test/unit/assertions'   # needed for assert
include Test::Unit::Assertions
require './temperature.rb'

def testTemperature
   temp = Temperatures::Temperature.new('C', 0.0)
   print "Enter the starting Temperature: \n"
   start = temp.createTemperature();
   print "Enter the finishing Temperature: \n"
   finish = temp.createTemperature();
   if start.lessThan(finish) then
     print "Enter the incrementing Temperature: \n"
     inc = temp.createTemperature();
     while start.lessThan(finish) do
       f = start.getFahrenheit()
       c = start.getCelsius()
       k = start.getKelvin()
       
     end
   else
     print "Invalid starting/finishing values."

   end
end

testTemperature
