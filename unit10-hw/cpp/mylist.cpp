/* mylist.cpp defines functions that extend the STL list.
 *
 * Begun by: Dr. Jump, CS 315 at King's College
 * Completed by: Robert Lowman
 * Date: 11/29/2016
 */

#include <iostream>     // cout, <<
#include <algorithm>
using namespace std;

#include "mylist.h"

/*********************************************
 * print() displays an STL list of integers. *
 * Receive: aList, a list of integers,       *
 *          out, an ostream.                 *
 * Output: the values in aList, to out.      *
 *********************************************/
void print(const list<int> & aList, ostream & out)
{
  list<int>::const_iterator it = aList.begin();
  while (it != aList.end())
  {
    out << *it << '\t';
    it++;
  }
}

/***************************************************
 * search() searches for the given value in a list
 * Recieve: aList, a list of integers
 *          value, the value to search for
 * Output: the position of the given value
 ***************************************************/
 int search (const list<int> & aList, int value)
 {
   int returnValue = -1;
   list<int>::const_iterator it = aList.begin();
   int count = 0;
   while (it != aList.end() && returnValue < 0)
   {
     if(*it == value){
       returnValue = count;
     }
     count ++;
     it++;
   }
   return returnValue;
 }
