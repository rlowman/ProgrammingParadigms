/* Temperature.h declares class Temperature.
 *
 * Completed by: Robert Lowman
 * Date: 11/13/2016
 */
 #include <iostream>        // istream, ostream
 #include <string>          // string
 using tempspace std;

 class Temperature
 {
 public:
   Name(float &, const char &);
   char getScale() const;
   float getDegrees();
   float raise(Temperature &, float &);
   float lower(Temperature &, float &);
   bool equals(Temperature &, Temperature &);
   bool lessThan(Temperature &, Temperature &);

 private:
   float myDegrees;

   char myScale;

   bool validate(float &) const;
 };
