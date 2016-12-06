/* WalkingBird.h
 *
 * Completed by: Robert Lowman
 * Date: 12/5/16
 */

#ifndef WALKINGBIRD
#define WALKINGBIRD

#include "Bird.h"

class WalkingBird : public Bird {
 public:
   WalkingBird(const string & name);
     string movement() const;
 private:

};

/**
 * Constructor method for class Duck
 *
 * Receive: name, a reference to the name of the Duck
 * Return: new instance of Goose
 */
inline WalkingBird::WalkingBird(const string & name)
    : Bird(name)
{}

/**
 * movement() returns the movement the Bird makes
 *
 * Return: string of the movement this Bird makes
 */
inline string WalkingBird::movement() const
{
  return "walked past";
}

#endif
