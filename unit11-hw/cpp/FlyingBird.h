/* FlyingBird.h
 *
 * Completed by: Robert Lowman
 * Date: 12/5/16
 */

#ifndef FLYINGBIRD
#define FLYINGBIRD

#include "Bird.h"

class FlyingBird : public Bird {
 public:
   FlyingBird(const string & name);
     string movement() const;
 private:

};

/**
 * Constructor method for class FlyingBird
 *
 * Receive: name, a reference to the name of the FlyingBird
 * Return: new instance of Goose
 */
inline FlyingBird::FlyingBird(const string & name)
    : Bird(name)
{}

/**
 * movement() returns the movement the Bird makes
 *
 * Return: string of the movement this Bird makes
 */
inline string FlyingBird::movement() const
{
  return "flew past";
}

#endif
