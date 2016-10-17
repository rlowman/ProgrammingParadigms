/* hw06.cpp gets the size of an array and doubles to fill it then
 *  prints its contents
 * Precondition: size > 0.
 * Output: the values of the given array.
 *
 * Completed by: Robert Lowman
 * Date: 10/17/2016
 */

#include <iostream>
#include <numeric>
using namespace std;

void print(double anArray[], int itsSize, ostream & out = cout);

void read(double anArray[], int itsSize, istream & in = cin);

int main() {

  int size;
  
  cout << "Enter the size of the array: " << endl;
  cin >> size;
  double array[size];
  cout << "Enter that many doubles seperatly: " << endl;
  read(array, size);
  cout << "Results: " << endl;
  print(array, size);
}

/**
 * print recives an array of doubles and prints them to output. 
 * Receive: anArray, an array of doubles.                       
 * Receive: itsSize, the size of the array.                    
 * Receive: out, output to print to.                           
 **/
void print(double anArray[], int itsSize, ostream & out) {
  for (int i = 0; i < itsSize; i++) {
    out << anArray[i] << endl;
  }
}

/**
 * read fills an array of doubles. 
 * Receive: anArray, an array of doubles.                       
 * Receive: itsSize, the size of the array.                    
 * Receive: int, input to read from.                             
 **/
void read(double anArray[], int itsSize, istream & in) {
  for (int i = 0; i < itsSize; i++) {
    in >> anArray[i];
  }
}
