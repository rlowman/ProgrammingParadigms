-- Temperature_package.adb defines operations for the Temperature type.
--
-- Completed by: Robert Lowman
-- Date: 11/14/2016
---------------------------------------------------------
with Ada.Text_IO; use Ada.Text_IO;

package body Temperature_Package is
  ----------------------------------------------
  -- Init initializes a Temperature variable   -
  -- Receive: theTemperature, the Name variable;
  --          Scale, the temperature scale;
  --          Degrees, the temperatures degrees;
  -- Return: theTemperature, its fields set. -
  ----------------------------------------------
   procedure Init(TheTemperature : out Temperature;
                  Scale : in Character;
                  Degrees : in Float) is

   begin
      TheTemperature.MyScale := Scale;
      TheTemperature.MyDegrees := Degrees;
   end Init;


  ----------------------------------------------
  -- GetScale(Temperature) retrieves Temperature.myScale     -
  -- Receive: theName, a Name.                 -
  -- PRE: theTemperature has been initialized.        -
  -- Return: theTemperature.myScale.                  -
  ----------------------------------------------
   function GetScale(TheTemperature : in Temperature) return Character is
   begin
      return TheName.MyScale;
   end GetScale;


  ----------------------------------------------
  -- GetScale(Temperature) retrieves Temperature.myScale     -
  -- Receive: theName, a Name.                 -
  -- PRE: theTemperature has been initialized.        -
  -- Return: theTemperature.myScale.                  -
  ----------------------------------------------
   function GetDegrees(TheTemperature : in Temperature) return Float is
   begin
      return TheTemperature.MyDegrees;
   end GetDegrees;

  --------------------------------------------------
  -- GetFullName(Name) retrieves Name as a String  -
  -- Receive: theName, a Name.                     -
  -- PRE: theName has been initialized.            -
  -- Return: a String representation of theName    -
  --------------------------------------------------
   function GetFahrenheit(TheTemperature : in Temperature) return Temperature is
     Temp : Character := GetScale(TheTemperature);
     ReturnValue : Temperature;
   begin
      case Temp is
        when 'F' | 'f' => return TheTemperature;
        when 'C' | 'c' => return Init(ReturnValue, 'F', )
   end GetFullName;

   ----------------------------------------------
   -- Put(Name) displays a Name value.          -
   -- PRE: theName has been initialized.        -
   -- Receive: theName, a Name.                 -
   -- Output: theName, to the screen.           -
   ----------------------------------------------

   -- replace this line with the definition of Put()
    procedure Put(TheName : Name) is
    begin
       Put(TheName.MyFirst & " ");
       Put(TheName.MyMiddle & " ");
       Put(TheName.MyLast);
    end Put;
end Name_Package;
