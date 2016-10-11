/* average.cpp "test-drives" function Average.
 * Precondition: theArray is an array of numbers.
 * Output: the average of the values.
 *
 * Begun by: Dr Jump for CS 315 at King's College
 * Completed by: Robert Lowman
 * Date: 10/11/2016
 */

#include <iostream>
#include <numeric>     // for accumulate
using namespace std;

double average(double anArray[], int itsSize);

int main() {

  double first[] = {};
  double second[] = {9.0, 8.0, 7.0, 6.0};

  cout << "\n first average is " << average(first, 0) << endl;
  cout << "\n second average is " << average(second, 4) << endl;
}

/*******************************************************
 * average averages the values in an array of doubles. *
 * Receive: anArray, an array of doubles.              *
 * Return: the average of the values in aVector.       *
 *******************************************************/
double average(double anArray[], int itsSize) {
  if(itsSize <= 0) {
    return 0.0;
  } else {
    return accumulate(anArray, anArray+itsSize, 0.0) / itsSize;
  }
}
