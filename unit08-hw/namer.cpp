/* namer.cpp implements and tests class Name.
 *
 * Completed by: Robert Lowman
 * Date: 11/3/2016
 */

#include <iostream>        // istream, ostream
#include <string>          // string
#include <cassert>         // assert()
using namespace std;


class Name
{
public:
  Name(const string &, const string &, const string &);
  string getFirst() const;
  string getMiddle() const;
  string getLast() const;
  string getFullName() const;
  void setFirst(const string &);
  void setMiddle(const string &);
  void setLast(const string &);
  string lfmi() const;
  void read(istream &);
  void print(ostream &);
private:
  string myFirst,
         myMiddle,
         myLast;
};


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

/********************************************
 * setFirst() sets the first field.
 * Receive: aFirst, the new first name.
 *******************************************/
 void Name::setFirst(const string & aFirst) {
      myFirst = aFirst;
   }

/********************************************
 * setMiddle() sets the first field.
 * Receive: aMiddle, the new middle name.
 *******************************************/
 void Name::setMiddle(const string & aMiddle) {
      myMiddle = aMiddle;
   }

/********************************************
 * setLast() sets the last field.
 * Receive: aLast, the new last name.
 *******************************************/
 void Name::setLast(const string & aLast) {
      myLast = aLast;
   }

/********************************************
 * lfmi() returns the name in last, first,
 * middle form.
 * Return: string in proper form
 *******************************************/
 string Name::lfmi() const {
      return myLast + ", " + myFirst + " " + myMiddle[0] + ".";
   }

/********************************************
 * read() reads in a full name.
 * Receive: isteam, input to read from.
 *******************************************/
 void Name::read(istream & in = cin) {
       in >> myFirst >> myMiddle >> myLast;
    }

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
  assert( aName.lfmi() == "Jones, John P.");

  aName.setFirst("Robert");
  aName.setMiddle("Craig");
  aName.setLast("Lowman");

  aName.read();

  assert( aName.getFirst() == "Robert");
  assert( aName.getMiddle() == "Craig");
  assert( aName.getLast() == "Lowman");

  aName.print(cout);  cout << endl;
  cout << "\n\nAll tests passed! " << endl;
}
