/* rootProgram.cpp determines if two roots are valid.
 *
 * Input: aString, a string;
 *        pos, an integer.
 * PRE: 0 <= pos < aString.length().
 * Output: The substrings aString(0, pos-1) and aString(pos, length()-1).
 *
 * Completed by: Robert Lowman
 * Date: 10/4/2016
 **********************************************************************/

#include <iostream>
#include <cmath>
using namespace std;


bool quadraticRoots(double a, double b, double c,
		    double & root1, double & root2);

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
 * quadraticRoots() determines if given variables are 
 * valid and then finds roots              
 * 
 * Receive: a, the value for a in the equation,    
 *          b, the value for b in the equation, 
 *          c, the value for c in the equation,
 *       
 * Passback: root1 - the value for the first root,     
 *           root2 - the value for the second root.     
 **************************************************/
bool quadraticRoots(double a, double b, double c,
		    double & root1, double & root2) {
  if (a != 0) {
     double arg = pow(b, 2.0) - 4 * a * c;
     if (arg >= 0) {
        root1 = (-b + sqrt(arg))/(2*a);
        root2 = (-b - sqrt(arg))/(2*a);
        return true;
     }
     else {
        cerr << "\n*** quadraticRoots(): b^2 - 4ac is negative!" << endl;
        root1 = root2 = 0.0;
        return false;
     }
  }
  else {
     cerr << "\n*** quadraticRoots(): a is zero!" << endl;
     root1 = root2 = 0.0;
     return false;
  }
}
