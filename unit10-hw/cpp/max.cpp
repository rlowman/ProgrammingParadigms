/* max.cpp finds the maximum value in a C++ linked list
 *  and the search value
 *
 * Begun by: Dr. Jump, CS 315 at King's College
 * Completed by: Robert Lowman
 * Date: 11/29/2016
 */

#include <iostream> // cin, cout, <<, >>
#include <algorithm>
using namespace std;

#include "mylist.h"       // print()

int main() {
  // define list1, list2, list3 ...
  list<int> list1;
  list<int> list2;
  list<int> list3;
  list<int> list4;

  list1.push_back(99);    // 99, 88, 77, 66, 55
  list1.push_back(88);    // max is first
  list1.push_back(77);
  list1.push_back(66);
  list1.push_back(55);

  list2.push_back(55);    // 55, 66, 77, 88, 99
  list2.push_back(66);    // max is last
  list2.push_back(77);
  list2.push_back(88);
  list2.push_back(99);

  list3.push_back(55);    // 55, 77, 99, 88, 66
  list3.push_back(77);    // max is in the middle
  list3.push_back(99);
  list3.push_back(88);
  list3.push_back(66);

  list4.push_back(55);    // 55, 77, 33, 88, 66
  list4.push_back(77);
  list4.push_back(33);
  list4.push_back(88);
  list4.push_back(66);

  print(list1, cout); cout << endl;
  print(list2, cout); cout << endl;
  print(list3, cout); cout << endl;
  print(list4, cout); cout << endl;

  // display maxima of the 3 lists...
  cout << "List #1 Maximum: ";
  cout << *max_element(list1.begin(), list1.end()) << endl;
  cout << "List #2 Maximum: ";
  cout << *max_element(list2.begin(), list2.end()) << endl;
  cout << "List #3 Maximum: ";
  cout << *max_element(list3.begin(), list3.end()) << endl;

  cout << "List #1 99's Locations :";
  cout << search(list1, 99) << endl;
  cout << "List #2 99's Locations :";
  cout << search(list2, 99) << endl;
  cout << "List #3 99's Locations :";
  cout << search(list3, 99) << endl;
  cout << "List #4 99's Locations :";
  cout << search(list4, 99) << endl;
}
