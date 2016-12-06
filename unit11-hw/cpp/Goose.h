/* Goose.h
 * Begun by: Dr. Jump for CS 315 at King's College
 * Completed by: Robert Lowman
 * Date: 11/29/16
 */

#ifndef GOOSE
#define GOOSE

#include "Bird.h"
#include "FlyingBird.h"

class Goose : public FlyingBird {
 public:
    Goose(const string & name);
    string call() const;
    string className() const;
 private:

};

/**
 * Constructor method for class Goose
 *
 * Receive: name, a reference to the name of the Goose
 * Return: new instance of Goose
 */
inline Goose::Goose(const string & name)
 : FlyingBird(name)
{}

/**
 * call() returns the sound the Goose makes
 *
 * Return: string of the call a Goose makes
 */
inline string Goose::call() const
{
  return "Honk!";
}

/**
 * className() returns the name of the class
 *
 * Return: the string of the name of the class
 */
inline string Goose::className() const
{
  return "Goose";
}


#endif
