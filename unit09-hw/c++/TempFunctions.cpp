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
 char getScale::Temperature()
 {
   return myScale;
 }

 /**************************************************
 * getDegrees returns the degrees of the           *
 *  current temperature                            *
 * Return: the degrees of the instance.            *
 ***************************************************/
 double getDegrees::Temperature()
 {
   return myDegrees;
 }

 /****************************************************
 * getFahrenheit converts the given Temperature      *
 *  to Fehrenheit                                    *
 * Return: the equivalent Temperature in Fehrenheit. *                *
 *****************************************************/
 Temperature getFahrenheit::Temperature(Temperature & temp)
 {
   Temperature returnValue = temp;
   if(temp.getScale() == 'C' || temp.getScale() == 'c') {
     double newDegrees = (1.8 * temp.getDegrees()) + 32.0;
     returnValue = Temperature('F', newDegrees);
   }
   else {
     if(temp.getScale() == 'K' || temp.getScale() == 'k'){
       double newDegrees = (1.8 * (temp.getDegrees() - 273) + 32);
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
 Temperature getCelsius::Temperature(Temperature & temp)
 {
   Temperature returnValue = temp;
   if(temp.getScale() == 'F' || temp.getScale() == 'f') {
     double newDegrees = (5/9) * (temp.getDegrees() - 32.0);
     returnValue = Temperature('C', newDegrees);
   }
   else {
     if(temp.getScale() == 'K' || temp.getScale() == 'k'){
       double newDegrees = temp.getDegrees() - 273.0;
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
 Temperature getKelvin::Temperature(Temperature & temp)
 {
   Temperature returnValue = temp;
   if(temp.getScale() == 'C' || temp.getScale() == 'c') {
     double newDegrees = temp.getDegrees() + 273.0;
     returnValue = Temperature('K', newDegrees);
   }
   else {
     if(temp.getScale() == 'F' || temp.getScale() == 'f'){
       double newDegrees = ((5/9) * (temp.getDegrees() - 32.0)) + 273;
       returnValue = Temperature('K', newDegrees);
     }
   }
    return returnValue;
 }

 Temperature createTemperature::Temperature(string & entry)
 {
   float 
 }
