/* Kiwi.h
 *
 * Completed by: Robert Lowman
 * Date: 12/4/16
 */

#ifndef KIWI
#define KIWI

#include "Bird.h"
#include "WalkingBird.h"

class Kiwi : public WalkingBird {
 public:
   Kiwi(const string & name);
   string call() const;
   string className() const;
 private:

};

/**
 * Constructor method for class Kiwi
 *
 * Receive: name, a reference to the name of the Kiwi
 * Return: new instance of Ostrich
 */
inline Kiwi::Kiwi(const string & name)
 : WalkingBird(name)
{}

/**
 * call() returns the sound the Kiwi makes
 *
 * Return: string of the call a Kiwi makes
 */
inline string Kiwi::call() const
{
  return "Twee-do";
}

/**
 * className() returns the name of the class
 *
 * Return: the string of the name of the class
 */
inline string Kiwi::className() const
{
  return "Kiwi";
}


#endif
