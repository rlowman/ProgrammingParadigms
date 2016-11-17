/* Name.cpp defines Name operations.
 *
 * Completed by: Robert Lowman
 * Date: 11/14/2016
 */
 #include "Name.h"
 #include <cstdlib>
 #include <iostream>

 /***************************************************
 * Temperature constructs a temperature.            *
 * Receive: scale, a valid char of the scale.       *
 *          degrees, the degrees of the temperature *
 * Return: the triplet (first middle last).         *
 ****************************************************/
 Temperature::Temperature(double & degrees, char & scale)
 {
   myScale = scale;
   myDegrees = degrees;
 }

 /**************************************************
 * getScale returns the scale of the               *
 *  current temperature                            *
 * Return: the identifying scale.                  *
 ***************************************************/
 char Temperature::getScale()
 {
   return myScale;
 }

 /**************************************************
 * getDegrees returns the degrees of the           *
 *  current temperature                            *
 * Return: the degrees of the instance.            *
 ***************************************************/
 double Temperature::getDegrees()
 {
   return myDegrees;
 }

 /****************************************************
 * getFahrenheit converts the given Temperature      *
 *  to Fehrenheit                                    *
 * Return: the equivalent Temperature in Fehrenheit. *                *
 *****************************************************/
 Temperature Temperature::getFahrenheit() const
 {
   Temperature returnValue = this;
   if(myScale == 'C' || myScale == 'c') {
     double newDegrees = (1.8 * myDegrees) + 32.0;
     returnValue = Temperature(newDegrees, 'F');
   }
   else {
     if(myScale == 'K' || myScale == 'k'){
       double newDegrees = (1.8 * (myDegrees - 273.0) + 32.0);
       returnValue = Temperature(newDegrees, 'F');
     }
   }
   return returnValue;
 }

 /*************************************************
 * getCelsius converts the given Temperature      *
 *  to Celsius                                    *
 * Return: the equivalent Temperature in Celsius. *                *
 **************************************************/
 Temperature getCelsius::Temperature() const
 {
   Temperature turnValue = this;
   if(myScale == 'F' || myScale == 'f') {
     double newDeg = convertFtoC(myDegrees);
     returnValue = Temperature(newDeg, 'C');
   }
   else {
     if(myScale == 'K' || myScale == 'k'){
       double newDeg = convertKtoC(myDegrees);
       returnValue = Temperature(newDeg, 'C');
     }
   }
   return returnValue;
 }

 /************************************************
 * getKelvin converts the given Temperature      *
 *  to Kelvin                                    *
 * Return: the equivalent Temperature in Kelvin. *                *
 *************************************************/
 Temperature Temperature::getKelvin() const
 {
   Temperature returnValue = this;
   if(myScale == 'C' || myScale == 'c') {
     double newDeg = convertCtoK(myDegrees);
     returnValue = Temperature(newDeg, 'K');
   }
   else {
     if(myScale == 'F' || myScale == 'f'){
       double newDeg = convertFtoK(myDegrees);
       returnValue = Temperature(newDeg, 'K');
     }
   }
    return returnValue;
 }

 Temperature Temperature::createTemperature() const
 {
   double degrees;
   char scale;
   cin >> degrees;
   cin >> scale;
   return Temperature(degrees, scale);
 }

 void Temperature::printInfomation() const
 {
   cout << myDegrees << " " << myScale;
 }

 Temperature Temperature::raise(double & theDeg) const
 {
   return Temperature(myDegrees + theDeg, myScale);
 }

 Temperature Temperature::lower(double & theDeg) const
 {
   return Temperature(myDegrees - theDeg, myScale);
 }

 bool equals(const Temperature & compare) const
 {
   Temperature comp = compare.getFahrenheit();
   Temperature original = this.getFahrenheit();
   returnValue = false;
   if(original.getDegrees() == compare.getDegrees()) {
     returnValue = true;
   }
   return returnValue;
 }

 bool lessThan(const Temperature & compare) const
 {
   Temperature comp = compare.getFahrenheit();
   Temperature original = this.getFahrenheit();
   returnValue = false;
   if(original.getDegrees() < compare.getDegrees()) {
     returnValue = true;
   }
   return returnValue;
 }

 double Temperature::convertFtoC(double & theF) const
 {
   return (theF - 32.0) * (5/9);
 }

 double Temperature::convertFtoK(double & theF) const
 {
   return convertFtoC(theF) + 273.15;
 }

 double Temperature::convertCtoF(double & theC) const
 {
   return (theC * (9/5)) + 32.0;
 }

 double Temperature::convertCtoK(double & theC) const
 {
   return theC + 273.15;
 }

 double Temperature::convertKtoF(double & theK) const
 {
   return (convertKtoC(theK) * (9/5)) + 32.0
 }

 double Temperature::convertKtoC(double & theK) const
 {
   return theK - 273.15;
 }
