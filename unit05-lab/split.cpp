/* split.cpp splits a string into two substrings.
 *
 * Input: aString, a string;
 *        pos, an integer.
 * PRE: 0 <= pos < aString.length().
 * Output: The substrings aString(0, pos-1) and aString(pos, length()-1).
 *
 * Begun by: Dr. Jump for CS 315 at King's College
 * Completed by: Robert Lowman
 * Date: 10/4/2016
 **********************************************************************/

#include <iostream>
#include <string>
using namespace std;


void split(const string & theString, int position,
	   string & firstPart, string & lastPart);

int main() {
  cout << "To split a string, enter the string: ";
  string aString;
  getline(cin, aString);

  cout << "Enter the split position: ";
  int pos;
  cin >> pos;

  string part1, part2;
  split(aString, pos, part1, part2);

  cout << "The first part is " << part1
       << " and the second part is " << part2 << endl;
}

/**************************************************
 * split() splits a string in two.                *
 * Receive: theString, the string to be split,    *
 *          position, the split index.            *
 * PRE: 0 <= position < theString.length().        *
 * Passback: firstPart - the first substring,     *
 *           lastPart - the second substring.     *
 **************************************************/
void split(const string & theString, int position,
	   string & firstPart, string & lastPart) {
  int length = theString.length();
  firstPart = theString.substr(0, position);
  lastPart = theString.substr(position, length - position); 
}
