/* Owl.h
 *
 * Begun by: Dr. Jump for CS 315 at King's College
 * Completed by: Robert Lowman
 * Date: 11/29/16
 */

#ifndef OWL
#define OWL

#include "Bird.h"

class Owl : public Bird {
 public:
   Owl(const string & name);
   string call() const;
   string className() const;
 private:

};

/**
 * Constructor method for class Owl
 *
 * Receive: name, a reference to the name of the Owl
 * Return: new instance of Owl
 */
inline Owl::Owl(const string & name)
 : Bird(name)
{}

/**
 * call() returns the sound the Goose makes
 *
 * Return: string of the call a Goose makes
 */
inline string Owl::call() const
{
  return "Hoot!";
}

/**
 * className() returns the name of the class
 *
 * Return: the string of the name of the class
 */
inline string Owl::className() const
{
  return "Owl";
}


#endif
