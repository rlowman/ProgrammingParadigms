/* Goose.h
 * Begun by: Dr. Jump for CS 315 at King's College
 * Completed by: Robert Lowman
 * Date: 11/29/16
 */

#ifndef GOOSE
#define GOOSE

#include "Bird.h"

class Goose : public Bird {
 public:
    Goose(const string & name);
    string call() const;
    string className() const;
 private:

};

inline Goose::Goose(const string & name)
 : Bird(name)
{}

inline string Goose::call() const
{
  return "Honk!";
}

inline string Goose::className() const
{
  return "Goose";
}


#endif
