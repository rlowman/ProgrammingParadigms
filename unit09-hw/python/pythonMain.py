## Main class for Temperature program
## Author: Robert Lowman
## Date: 12/5/16
import temperature

create = temperature.Temperature(0, 'C')
print "Enter Information about starting Temperature"
start = create.createTemperature()
print "Enter Information about ending Temperature"
end = create.createTemperature()
print "Enter Information about Incrementing Temperature"
inc = create.createTemperature()

inc = inc.getFahrenheit()

if start is None or end is None or inc is None:
    print "Invalid value given"
else :
    while start.lessThan(end):
        start = start.getFahrenheit()
        start.printTemperature()
        print "\t",
        start.getCelsius().printTemperature()
        print "\t",
        start.getKelvin().printTemperature()
        print "\n"
        start = start.raiseTemperature(inc.degrees)
