/* Bird.h provides class Bird.
 *
 * Begun by: Dr. Jump for CS 315 at King's College
 * Completed by:
 * Date:
 */

#ifndef BIRD
#define BIRD

#include <string>
using namespace std;

class Bird {
 public:           // interface
  Bird(const string & name);
      string name() const;
      string call() const;
      virtual string call() const;
      void print(ostream & out = cout) const;
      string className() const;
 private:          // data
  string myName;
};

inline Bird::Bird(const string & name) {
     myName = name;
}

inline string Bird::name() const {
    return myName;
}

inline string Bird::call() const {
     return "Squaaaaaaawk!";
}

inline string Bird::className() const {
     return "Bird";
}

inline void Bird::print(ostream & out) const {
      out << name()
          << ' '
          << className()
          << " says "
          << call();
}

#endif
