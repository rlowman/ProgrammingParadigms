/***********************************************
 * Computes the area of a circle.
 * 
 * Input: The radius of a circle.
 * Precondition: The radius is a positive number.
 * Ouput: The area of the circle.
 * 
 * Begun by Dr Jump for the CS 315 at King's College
 * Completed by: Robert Lowman
 * Date: 9/1/16
 ***********************************************/

#include  <iostream>  // enables input and output
using namespace std;

/**
 * Function that computes the area of a circle.
 *
 * Parameter: radius The radius of the circle.
 * Precondition: radius > 0
 * Returns: The area of the circle. 
 */
double computeArea(double radius)
{
  const double PI = 3.1415927;       // define a constant
  return PI * radius * radius;       // return an expression
}

/**
 * Main method.
 */
int main()
{
                                     // prompt for and input radius
  cout << "To compute the area of a circle. enter its radius: ";
  double radius;                     // variable declaration
  cin >> radius;                     // read radius from keyboard
  double area = computeArea(radius); // compute area
  cout << "The area is " << area << endl;
}
