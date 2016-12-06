/* Bird.h provides class Bird.
 *
 * Begun by: Dr. Jump for CS 315 at King's College
 * Completed by: Robert Lowman
 * Date: 11/29/16
 */

#ifndef BIRD
#define BIRD

#include <string>
using namespace std;

class Bird {
 public:           // interface
  Bird(const string & name);
      string name() const;
      virtual string call() const;
      void print(ostream & out = cout) const;
      virtual string className() const;
      virtual string movement() const;
      virtual ~Bird();

 private:          // data
  string myName;
};

/**
 * Constructor method for class Bird
 *
 * Receive: name, name of the Bird
 * Output: new Bird instance
 */
inline Bird::Bird(const string & name) {
     myName = name;
}

/**
 * name() returns the name of the Bird
 *
 * Return: the name of the Bird
 */
inline string Bird::name() const {
    return myName;
}

/**
 * call() returns the call of the Bird
 *
 * Return: the call of the Bird
 */
inline string Bird::call() const {
     return "Squaaaaaaawk!";
}

/**
 * className() returns the class name of the Bird
 *
 * Return: the type of Bird
 */
inline string Bird::className() const {
     return "Bird";
}

/**
 * movement() returns the movement of the Bird
 *
 * Return: the movement of the Bird
 */
inline string Bird::movement() const {
  return "did bird-things";
}

/**
 * print() prints information about the Bird
 *
 * Receive: out the output to print to
 */
inline void Bird::print(ostream & out) const {
      out << name()
          << ' '
          << className()
          << " just "
          << movement()
          << " and said "
          << call();
}

/**
 * Deconstuctor for Bird
 */
inline Bird::~Bird() {}

#endif
