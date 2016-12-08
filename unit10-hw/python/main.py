## main.py main class for hw10
## Author: Robert Lowman
## Date: 12/6/16
import craigslist

list1 = craigslist.craigslist([99, 88, 77, 66, 55])
list2 = craigslist.craigslist([88, 77, 99, 66, 55])
list3 = craigslist.craigslist([88, 77, 66, 55, 99])
list4 = craigslist.craigslist([11, 55, 66, 77, 88])

list1.printList()
print "99 is in position: ", list1.search(99)
list2.printList()
print "99 is in position: ", list2.search(99)
list3.printList()
print "99 is in position: ", list3.search(99)
list4.printList()
print "99 is in position: ", list4.search(99)
