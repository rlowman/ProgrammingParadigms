/***************************************************************
 * Computes the area of a triangle.
 *
 * Input: The radius of a triangle.
 * Precondition: The height and width is a positive number.
 * Output: The area of the triangle.
 *
 * Completed by: Robert Lowman
 * Date: 9/7/16
 ***************************************************************/

#include <iostream>     // enables input and output
using namespace std;

/**
 * Function that computes the area of a triangle.
 *
 * Parameter: height The height of the triangle.
 * Parameter: width The width of the triangle.
 * Precondition: height > 0
 * Precondition: width > 0
 * Returns: The area of the triangle.
 */
double computeArea(double height, double width)
{
  return .5 * height * width;            // return an expression
}

/**
 * Main method.
 */
int main()
{
                                          // prompt for and input radius
  cout << "To compute the area of a triangle, enter its height: ";
  double height;                          // variable declaration
  cin >> height;                          // read height from keyboard
  cout << "To compute the area of a triangle, enter its width: ";
  double width;                          // variable declaration
  cin >> width;                          // read width from keyboard
  double area = computeArea(height, width);      // compute area
  cout << "The area is " << area << endl; // output area
}

