/* Name.cpp defines Name operations.
 *
 * Begun by: Dr. Jump, CS 315 at King's College
 * Completed by: Robert Lowman
 * Date:
 */
 #include "Name.h"

 /**************************************************
 * Name constructs a name from three strings.      *
 * Receive: first, middle and last, three strings. *
 * Return: the triplet (first middle last).        *
 ***************************************************/

 Name::Name(const string & first, const string & middle, const string & last)
 {
   myFirst = first;
   myMiddle = middle;
   myLast = last;
 }

 /***************************************************
  * getFirst() extracts the first name of a Name object. *
  * Return: myFirst.                                *
  ***************************************************/

 string Name::getFirst() const
 {
   return myFirst;
 }

 /*****************************************************
  * getMiddle() extracts the middle name of a Name object. *
  * Return: myMiddle.                                 *
  *****************************************************/

 string Name::getMiddle() const
 {
   return myMiddle;
 }

 /**************************************************
  * getLast() extracts the last name of a Name object.  *
  * Return: myLast.                                *
  **************************************************/

 string Name::getLast() const
 {
   return myLast;
 }

 /***************************************************
  * getFullName() returns a full name in F-M-L order.    *
  * Return: myFirst, myMiddle, myLast.              *
  ***************************************************/

 string Name::getFullName() const
 {
   return myFirst + ' ' + myMiddle + ' ' + myLast;
 }

 /****************************************************
  * print() displays a Name object.                    *
  * Receive: out, the name of a stream.              *
  * Output: the strings in theName to buffer.        *
  * POST: out contains myFirst, myMiddle and myLast. *
  ****************************************************/

 void Name::print(ostream & out)
 {
   out << getFullName();
 }
