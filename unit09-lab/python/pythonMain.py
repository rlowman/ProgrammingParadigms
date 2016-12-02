## Main class for the Name class
## Tests methods and modularity
##
## Completed By: Robert Lowman
## Date: 12/1/2016
import Name

aName = Name.Name("John", "Paul", "Jones")
assert aName.first == "John", "Invalid first"
assert aName.middle == "Paul", "Invalid middle"
assert aName.last == "Jones", "Invalid last"
assert aName.fullName() == "John Paul Jones", "Invalid full"
aName.printName()
print "All tests passed!"
