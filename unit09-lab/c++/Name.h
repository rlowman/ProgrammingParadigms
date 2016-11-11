/* Name.h declares class Name.
 *
 * Begun by: Dr. Jump, CS 315 at King's College
 * Completed by: Robert Lowman
 * Date: 11/10/2016
 */
 #include <iostream>        // istream, ostream
 #include <string>          // string
 using namespace std;

 class Name
 {
 public:
   Name(const string &, const string &, const string &);
   string getFirst() const;
   string getMiddle() const;
   string getLast() const;
   string getFullName() const;
   void print(ostream &);
 private:
   string myFirst,
          myMiddle,
          myLast;
 };
