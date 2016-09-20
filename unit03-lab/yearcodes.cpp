/* yearcodes.cpp is a driver for function yearCode().
 * Begun by: Dr. Jump for CS 315 at King's College.
 * Finished by: Robert Lowman
 ****************************************************************/

#include <iostream>                      // interactive I/O
#include <string>                        // string class
using namespace std;

int yearCode(const string & year);

int main() {
  cout << "\nEnter your academic year: "; // prompt
  string year;
  cin >> year;                            // read year
  cout << yearCode(year) << endl;         // display its code
}


/***************************************************************
 * yearCode() converts an academic year into its integer code. *
 * Receive: year, a string.
 * PRE: year is one of {freshman, sophomore, junior, or senior}.
 * Return: the integer code corresponding to year.
 */
int yearCode(const string & year) {
  if (year == "freshman") {
    return 1;
  }
  else {
    if (year == "sophomore") {
      return 2;
    }
    else {
      if (year == "junior") {
	return 3;
      }
      else {
	if (year == "senior") {
	  return 4;
	}
	else {
	  return 0;
	}
      }
    }
  }
}
