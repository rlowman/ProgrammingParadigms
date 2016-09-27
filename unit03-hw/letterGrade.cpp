/* letterGrade.cpp takes a numeric grade and returns the corresponding 
 * letter grade
 * Author: Robert Lowman
 ****************************************************************/

#include <iostream>                      // interactive I/O
#include <string>                        // string class
using namespace std;

char letterCode(int grade);

int main() {
  cout << "\nEnter the numeric grade (0-100): "; // prompt
  int grade;
  cin >> grade;                            // read year
  cout << letterCode(grade) << endl;         // display its code
}


/***************************************************************
 * letterCode() converts a numeric grade into a letter grade. *
 * Receive: grade, an int.
 * PRE: grade is between 0-100.
 * Return: the letter grade to the corresponding numeric grade.
 */
char letterCode(int grade) {
  char result = '\0';
  switch (grade / 10) {
  case 10: case 9:
    result = 'A';
    break;
  case 8:
    result = 'B';
    break;
  case 7:
    result = 'C';
    break;
  case 6:
    result = 'D';
    break;
  default:
    result = 'F';
    break;
  }
  return result;
}
