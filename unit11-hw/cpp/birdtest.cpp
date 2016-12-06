/* birdtest.cpp illustrates inheritance and polymorphism.
 *
 * Written by: Dr. Jump for CS 315 at King's College
 * Date: 11/29/16
 */

#include <iostream>       // cin, cout, <<, >>
using namespace std;

#include "Bird.h"         // Bird
#include "Owl.h"          // Owl
#include "Duck.h"         // Duck
#include "Goose.h"        // Goose
#include "Penguin.h"        // Penguin
#include "Kiwi.h"           // Kiwi
#include "Ostrich.h"        // Ostrich

int main() {
  Bird * birdPtr0 = NULL,
       * birdPtr1 = NULL,
       * birdPtr2 = NULL,
       * birdPtr3 = NULL,
       * birdPtr4 = NULL,
       * birdPtr5 = NULL,
       * birdPtr6 = NULL;

  birdPtr0 = new Bird("Hawkeye");
  birdPtr0->print(); cout << endl;

  birdPtr1 = new Duck("Donald");
  birdPtr1->print(); cout << endl;

  birdPtr2 = new Goose("Mother Goose");
  birdPtr2->print(); cout << endl;

  birdPtr3 = new Owl("Woodsey");
  birdPtr3->print(); cout << endl;

  birdPtr4 = new Penguin("Peter");
  birdPtr4->print(); cout << endl;

  birdPtr5 = new Kiwi("Kenny");
  birdPtr5->print(); cout << endl;

  birdPtr6 = new Ostrich("Orville");
  birdPtr6->print(); cout << endl;

  delete birdPtr0;
  delete birdPtr1;
  delete birdPtr2;
  delete birdPtr3;
  delete birdPtr4;
  delete birdPtr5;
  delete birdPtr6;
}
