/* Duck.h
 *
 * Begun by: Dr. Jump for CS 315 at King's College
 * Completed by: Robert Lowman
 * Date: 11/29/16
 */

#ifndef DUCK
#define DUCK

#include "Bird.h"

class Duck : public Bird {
 public:
   Duck(const string & name);
     string call() const;
     string className() const;
 private:

};

inline Duck::Duck(const string & name)
    : Bird(name)
{}

inline string Duck::call() const
{
  return "Quack!";
}

inline string Duck::className() const
{
  return "Duck";
}



#endif
