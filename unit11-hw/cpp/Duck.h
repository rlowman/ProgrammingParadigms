/* Duck.h
 *
 * Begun by: Dr. Jump for CS 315 at King's College
 * Completed by: Robert Lowman
 * Date: 11/29/16
 */

#ifndef DUCK
#define DUCK

#include "Bird.h"
#include "FlyingBird.h"

class Duck : public FlyingBird {
 public:
   Duck(const string & name);
     string call() const;
     string className() const;
 private:

};

/**
 * Constructor method for class Duck
 *
 * Receive: name, a reference to the name of the Duck
 * Return: new instance of Goose
 */
inline Duck::Duck(const string & name)
    : FlyingBird(name)
{}

/**
 * call() returns the sound the Duck makes
 *
 * Return: string of the call a Duck makes
 */
inline string Duck::call() const
{
  return "Quack!";
}

/**
 * className() returns the name of the class
 *
 * Return: the string of the name of the class
 */
inline string Duck::className() const
{
  return "Duck";
}

#endif
