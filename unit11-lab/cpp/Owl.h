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

inline Owl::Owl(const string & name)
 : Bird(name)
{}

inline string Owl::call() const
{
  return "Hoot!";
}

inline string Owl::className() const
{
  return "Owl";
}


#endif
