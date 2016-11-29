/* mylist.h declares functions that extend the STL list.
 *
 * Begun by: Dr. Jump, CS 315 at King's College
 * Completed by: Robert Lowman
 * Date: 11/29/2016
 */

#include <list>           // list<>
using namespace std;

void print(const list<int> &, ostream &);

int search(const list<int> &, int);
