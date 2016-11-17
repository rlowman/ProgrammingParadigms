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
  -- GetScale(Temperature) retrieves Temperature.myScale
  -- Receive: theName, a Name.
  -- PRE: theTemperature has been initialized.
  -- Return: theTemperature.myScale.
  ----------------------------------------------
   function GetDegrees(TheTemperature : in Temperature) return Float is
   begin
      return TheTemperature.MyDegrees;
   end GetDegrees;

  --------------------------------------------------
  -- GetFahrenheit(Temperature) returns the given
  --    Temperature as Fahrenheit
  -- Receive: theTemperature, a Temperature.
  -- PRE: theTemperature has been initialized.
  -- Return: a corresponding Temperature as Fahrenheit
  --------------------------------------------------
   function GetFahrenheit(TheTemperature : in Temperature) return Temperature is
     Temp : Character := GetScale(TheTemperature);
     ReturnValue : Temperature;
   begin
      case Temp is
        when 'F' | 'f' => return TheTemperature;
        when 'C' | 'c' => return Init(ReturnValue, 'F',
                                      ConvertCtoF(GetDegrees(TheTemperature)));
        when 'K' | 'k' => return Init(ReturnValue, 'F'
                                      ConvertKtoF(GetDegrees(TheTemperature)));
        when others    => return null;
      end case;
   end GetFahrenheit;

   --------------------------------------------------
   -- GetCelsius(Temperature) returns the given
   --    Temperature as Celsius
   -- Receive: theTemperature, a Temperature.
   -- PRE: theTemperature has been initialized.
   -- Return: a corresponding Temperature as Celsius
   --------------------------------------------------
    function GetCelsius(TheTemperature : in Temperature) return Temperature is
      Temp : Character := GetScale(TheTemperature);
      ReturnValue : Temperature;
    begin
       case Temp is
         when 'C' | 'c' => return TheTemperature;
         when 'F' | 'f' => return Init(ReturnValue, 'C',
                                       ConvertCtoF(GetDegrees(TheTemperature)));
         when 'K' | 'k' => return Init(ReturnValue, 'C'
                                       ConvertKtoF(GetDegrees(TheTemperature)));
         when others    => return null;
       end case;
    end GetCelsius;

    --------------------------------------------------
    -- GetKelvin(Temperature) returns the given
    --    Temperature as Kelvin
    -- Receive: theTemperature, a Temperature.
    -- PRE: theTemperature has been initialized.
    -- Return: a corresponding Temperature as Kelvin
    --------------------------------------------------
     function GetKelvin(TheTemperature : in Temperature) return Temperature is
       Temp : Character := GetScale(TheTemperature);
       ReturnValue : Temperature;
     begin
        case Temp is
          when 'F' | 'f' => return TheTemperature;
          when 'C' | 'c' => return Init(ReturnValue, 'F',
                                        ConvertCtoF(GetDegrees(TheTemperature)));
          when 'K' | 'k' => return Init(ReturnValue, 'F'
                                        ConvertKtoF(GetDegrees(TheTemperature)));
          when others    => return null;
        end case;
     end GetKelvin;

     --------------------------------------------------
     -- GetFahrenheit(Temperature) returns the given
     --    Temperature as Fahrenheit
     -- Receive: theTemperature, a Temperature.
     -- PRE: theTemperature has been initialized.
     -- Return: a corresponding Temperature as Fahrenheit
     --------------------------------------------------
      function CreateTemperature() return Temperature is
        Degrees : Float;
        Scale : Character;
        ReturnValue : Temperature;
      begin
        Get(Degrees);
        Get(Scale);
        return Init(ReturnValue, Scale, Degrees);
      end CreateTemperature;

     ----------------------------------------------------
     -- PrintInformation(Temperature) prints Temperature
     -- Receive: theTemperature, a Temperature.
     -- PRE: theTemperature has been initialized.
     -- Return: a corresponding Temperature as Fahrenheit
     --------------------------------------------------
      procedure PrintInformation(TheTemperature : in Temperature) is
      begin
        Put(GetDegrees(TheTemperature));
        Put(" ");
        Put(GetScale(TheTemperature));
      end PrintInformation;

     function Equals(Left : in Temperature,
                     Right : in Temperature) return Boolean is
        Original : Temperature;
        Compare : Temperature;
     begin
        Original := GetFahrenheit(Left);
        Compare := GetFahrenheit(Right);
        if GetDegrees(Original) = GetDegrees(Compare) then
          return true;
        else
          return false;
        end
     end

     function LessThan(Left : in Temperature,
                     Right : in Temperature) return Boolean is
        Original : Temperature;
        Compare : Temperature;
     begin
        Original := GetFahrenheit(Left);
        Compare := GetFahrenheit(Right);
        if GetDegrees(Original) < GetDegrees(Compare) then
          return true;
        else
          return false;
        end
     end

     function ConvertFtoC(Deg : in Float) return Float is
     begin
       return (Deg - 32.0) * (5.0/9.0);
     end

     function ConvertFtoK(Deg : in Float) return Float is
     begin
      return ConvertFtoC(Deg) + 273.15;
     end

     function ConvertCtoF(Deg : in Float) return Float is
     begin
       return (Deg * (9.0/5.0)) + 32.0;
     end

     function ConvertCtoK(Deg : in Float) return Float is
     begin
       return Deg + 273.15;
     end

     function ConvertKtoF(Deg : in Float) return Float is
     begin
       return ConvertKtoC(Deg) * ((9.0/5.0) + 32.0);
     end

     function ConvertKtoC(Deg : in Float) return Float is
     begin
       return Deg - 273.15;
     end
   end
end Temperature_Package;
