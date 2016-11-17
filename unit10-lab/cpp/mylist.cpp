/* mylist.cpp defines functions that extend the STL list.
 *
 * Begun by: Dr. Jump, CS 315 at King's College
 * Completed by: Robert Lowman
 * Date: 11/17/2016
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
