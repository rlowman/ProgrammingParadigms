with Ada.Text_IO; use Ada.Text_IO;

package Temperature_Package is

  type Temperature is private;
  ----------------------------------------------
  -- Init initializes a Temperature variable   -
  -- Receive: theTemperature, the Name variable;
  --          Scale, the temperature scale;
  --          Degrees, the temperatures degrees;
  -- Return: theTemperature, its fields set. -
  ----------------------------------------------
   procedure Init(TheTemperature : out Temperature;
                  Scale : in Character;
                  Degrees : in Float);

  ----------------------------------------------
  -- GetScale(Temperature) retrieves Temperature.myScale     -
  -- Receive: theName, a Name.                 -
  -- PRE: theTemperature has been initialized.        -
  -- Return: theTemperature.myScale.                  -
  ----------------------------------------------
   function GetScale(TheTemperature : in Temperature) return Character;


  ----------------------------------------------
  -- GetScale(Temperature) retrieves Temperature.myScale
  -- Receive: theName, a Name.
  -- PRE: theTemperature has been initialized.
  -- Return: theTemperature.myScale.
  ----------------------------------------------
   function GetDegrees(TheTemperature : in Temperature) return Float;

  --------------------------------------------------
  -- GetFahrenheit(Temperature) returns the given
  --    Temperature as Fahrenheit
  -- Receive: theTemperature, a Temperature.
  -- PRE: theTemperature has been initialized.
  -- Return: a corresponding Temperature as Fahrenheit
  --------------------------------------------------
   function GetFahrenheit(TheTemperature : in Temperature) return Temperature;

   --------------------------------------------------
   -- GetCelsius(Temperature) returns the given
   --    Temperature as Celsius
   -- Receive: theTemperature, a Temperature.
   -- PRE: theTemperature has been initialized.
   -- Return: a corresponding Temperature as Celsius
   --------------------------------------------------
    function GetCelsius(TheTemperature : in Temperature) return Temperature;

    --------------------------------------------------
    -- GetKelvin(Temperature) returns the given
    --    Temperature as Kelvin
    -- Receive: theTemperature, a Temperature.
    -- PRE: theTemperature has been initialized.
    -- Return: a corresponding Temperature as Kelvin
    --------------------------------------------------
    function GetKelvin(TheTemperature : in Temperature) return Temperature;

     --------------------------------------------------
     -- GetFahrenheit(Temperature) returns the given
     --    Temperature as Fahrenheit
     -- Receive: theTemperature, a Temperature.
     -- PRE: theTemperature has been initialized.
     -- Return: a corresponding Temperature as Fahrenheit
     --------------------------------------------------
      function CreateTemperature() return Temperature;

     ----------------------------------------------------
     -- PrintInformation(Temperature) prints Temperature
     -- Receive: theTemperature, a Temperature.
     -- PRE: theTemperature has been initialized.
     -- Return: a corresponding Temperature as Fahrenheit
     --------------------------------------------------
     procedure PrintInformation(TheTemperature : in Temperature);

     function Equals(Left : in Temperature,
                     Right : in Temperature) return Boolean;

     function LessThan(Left : in Temperature,
                     Right : in Temperature) return Boolean;

  private

    type Temperature is
    record
      MyScale : Character;
      MyDegrees : Float;
    end record;

     function ConvertFtoC(Deg : in Float) return Float;

     function ConvertFtoK(Deg : in Float) return Float;

     function ConvertCtoF(Deg : in Float) return Float;

     function ConvertCtoK(Deg : in Float) return Float;

     function ConvertKtoF(Deg : in Float) return Float;

     function ConvertKtoC(Deg : in Float) return Float;

end Temperature_Package;
