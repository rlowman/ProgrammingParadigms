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
   Temperature (float &, const char &);
   char getScale() const;
   double getDegrees() const;
   Temperature getFahrenheit() const;
   Temperature getCelsius() const;
   Temperature getKelvin() const;
   Temperature createTemperature(string &) const;
   void printInformation() const;
   double raise(double &);
   double lower(double &);
   bool equals(const Temperature &) const;
   bool lessThan(const Temperature &) const;

 private:
   double convertFtoC(double &) const;
   double convertFtoK(double &) const;
   double convertCtoF(double &) const;
   double convertCtoK(double &) const;
   double convertKtoF(double &) const;
   double convertKtoC(double &) const;

   float myDegrees;
   char myScale;
 };
