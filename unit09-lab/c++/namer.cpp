/* namer.cpp implements and tests class Name.
 *
 * Begun by: Dr. Jump, CS 315 at King's College
 * Completed by:
 * Date: 26/03/15
 */
#include "Name.h"
#include <cassert>         // assert()
using namespace std;

/******************************************
 * a simple driver to test our Name type. *
 ******************************************/
int main()
{
  Name aName("John", "Paul", "Jones");

  assert( aName.getFirst() == "John" );
  assert( aName.getMiddle() == "Paul" );
  assert( aName.getLast() == "Jones" );
  assert( aName.getFullName() == "John Paul Jones" );

  aName.print(cout);  cout << endl;
  cout << "\n\nAll tests passed! " << endl;
}
