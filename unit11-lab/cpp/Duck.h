/* Duck.h
 *
 * Begun by: Dr. Jump for CS 315 at King's College
 * Completed by:
 * Date:
 */

#ifndef DUCK
#define DUCK

#include "Bird.h"

class Duck {
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
