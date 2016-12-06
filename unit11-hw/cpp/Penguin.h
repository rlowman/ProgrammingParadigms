/* Penguin.h
 *
 * Completed by: Robert Lowman
 * Date: 12/4/16
 */

#ifndef PENGUIN
#define PENGUIN

#include "Bird.h"
#include "WalkingBird.h"

class Penguin : public WalkingBird {
 public:
   Penguin(const string & name);
   string call() const;
   string className() const;
 private:

};

/**
 * Constructor method for class Penguin
 *
 * Receive: name, a reference to the name of the Penguin
 * Return: new instance of Penguin
 */
inline Penguin::Penguin(const string & name)
 : WalkingBird(name)
{}

/**
 * call() returns the sound the Penguin makes
 *
 * Return: string of the call a Penguin makes
 */
inline string Penguin::call() const
{
  return "Huh-huh-huh-huuuuh";
}

/**
 * className() returns the name of the class
 *
 * Return: the string of the name of the class
 */
inline string Penguin::className() const
{
  return "Penguin";
}


#endif
