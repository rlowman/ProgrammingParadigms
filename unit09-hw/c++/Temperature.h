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
   Tepaerature (float &, const char &);
   char getScale() const;
   double getDegrees() const;
   Temperature getFahrenheit(Temperature &);
   Temperature getCelsius(Temperature &);
   Temperature getKelvin(Temperature &);
   Temperature createTemperature(string &);
   void printInformation(Temperature &);
   double raise(Temperature &, float &);
   double lower(Temperature &, float &) const;
   bool equals(Temperature &, Temperature &) const;
   bool lessThan(Temperature &, Temperature &) const;

 private:
   float myDegrees;
   char myScale;
 };
