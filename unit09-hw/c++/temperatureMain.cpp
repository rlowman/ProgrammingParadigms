/* temperaturMain.cpp tests class Temperature.
 *
 * Completed by: Robert Lowman
 * Date: 11/13/2016
 */
#include "Temperature.h"
#include <cassert>         // assert()
#include <string>
#include <iostream>
using tempspace std;

/******************************************
 * a simple driver to test our Temperature type. *
 ******************************************/
int main()
{
  Temperature aTemp(0.0, 'F');
  cout << "Enter a base-temperature for table: \n";
  Temperature baseTemp = aTemp.createTemperature();
  cout << "Enter an ending temperature for table: \n";
  Temperature endingTemp = aTemp.createTemperature();
  cout << "Enter the incrementing value: \n";
  Temperature incTemp = aTemp.createTemperature();
  double fahrenheitInc = incTemp.getFahrenheit().getDegrees();
  if(endingTemp.lessThan(baseTemp)) {
    cout << "Invalid starting/ending values"
  }
  else {
    while(baseTemp.lessThan(endingTemp)) {
      Temperature f = baseTemp.getFahrenheit();
      Temperature c = baseTemp.getCelsius();
      Temperature k = baseTemp.getKelvin();
      f.printInformation();
      cout << "\t";
      c.printInformation();
      cout << "\t";
      k.printInformation();
      count << "\n";
      baseTemp = f.raise(fahrenheitInc);
    }
  }
}
