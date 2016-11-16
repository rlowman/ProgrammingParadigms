/* Name.cpp defines Name operations.
 *
 * Completed by: Robert Lowman
 * Date: 11/14/2016
 */
 #include "Name.h"
 #include <cstdlib>

 /***************************************************
 * Temperature constructs a temperature.            *
 * Receive: scale, a valid char of the scale.       *
 *          degrees, the degrees of the temperature *
 * Return: the triplet (first middle last).         *
 ****************************************************/
 Temperature::Temperature(char & scale, double & degrees)
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
     returnValue = Temperature('F', newDegrees);
   }
   else {
     if(myScale == 'K' || myScale == 'k'){
       double newDegrees = (1.8 * (myDegrees - 273.0) + 32.0);
       returnValue = Temperature('F', newDegrees);
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
     double newDegrees = (5/9) * (myDegrees - 32.0);
     returnValue = Temperature('C', newDegrees);
   }
   else {
     if(myScale == 'K' || myScale == 'k'){
       double newDegrees = myDegrees - 273.0;
       returnValue = Temperature('C', newDegrees);
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
   Temperature returnValue = temp;
   if(myScale == 'C' || myScale == 'c') {
     double newDegrees = myDegrees + 273.0;
     returnValue = Temperature('K', newDegrees);
   }
   else {
     if(myScale == 'F' || myScale == 'f'){
       double newDegrees = ((5/9) * (myDegrees - 32.0)) + 273;
       returnValue = Temperature('K', newDegrees);
     }
   }
    return returnValue;
 }

 Temperature Temperature::createTemperature(string & entry) const
 {
   char * split;
   double deg = strod(entry, &split);
   std::string scale(split);
   return Temperature()
 }

 
