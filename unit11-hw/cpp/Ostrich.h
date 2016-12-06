/* Ostrich.h
 *
 * Completed by: Robert Lowman
 * Date: 12/4/16
 */

#ifndef OSTRICH
#define OSTRICH

#include "Bird.h"
#include "WalkingBird.h"

class Ostrich : public WalkingBird {
 public:
   Ostrich(const string & name);
   string call() const;
   string className() const;
 private:

};

/**
 * Constructor method for class Ostrich
 *
 * Receive: name, a reference to the name of the Ostrich
 * Return: new instance of Ostrich
 */
inline Ostrich::Ostrich(const string & name)
 : WalkingBird(name)
{}

/**
 * call() returns the sound the Ostrich makes
 *
 * Return: string of the call a Ostrich makes
 */
inline string Ostrich::call() const
{
  return "Snork";
}

/**
 * className() returns the name of the class
 *
 * Return: the string of the name of the class
 */
inline string Ostrich::className() const
{
  return "Ostrich";
}


#endif
