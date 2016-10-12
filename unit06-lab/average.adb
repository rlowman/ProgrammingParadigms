-- average.adb "test-drives" function Average.
-- Precondition: theArray is an array of numbers.
-- Output: the average of the numbers.
--
-- Begun by: Dr Jump for CS 315 at King's College
-- Completed by: Robert Lowman
-- Date: 10/11/2016
-----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;             -- Put(String)
with Ada.Float_Text_IO; use Ada.Float_Text_IO; -- Put(Float)

procedure Average is

-- Declare Vector type
   type Vector is array ( Positive range <> ) of Float;

-- Define array0 as an array containing no values
   First : Vector := ( 0.0, 0.0 );
   -- Define array1 as an array containing 9, 8, 7, 6
   Second : Vector := ( 9.0, 8.0, 7.0, 6.0 );

----------------------------------------------
-- sum() sums the values in an array         -
-- Receive: anArray, an array of numbers     -
-- Return: the sum of the values in anArray. -
----------------------------------------------
   function Sum(AnArray : in Vector) return Float is
      Total : Float := 0.0;
   begin
      --    for I in AnArray'Range
    (AnArray'First..AnArray'Last).each do |I| 
      Total := Total + AnArray(I);
    return Total;
   end Sum;   
   
--------------------------------------------------
-- average() averages the values in an array     -
-- Receive: anArray, an array of numbers         -
-- Return: the average of the values in anArray. -
--------------------------------------------------
   function Average(AnArray : in Vector) return Float is
      
   begin
      if AnArray'Length <= 0 then
	 return 0.0;
      else
	 return Sum(AnArray) / Float(AnArray'Length);
      end if;
   end Average;
     
begin
   Put(" first average is ");
   Put( Average(First) );
   New_line;
   Put(" second average is ");
   Put( Average(second) );
   New_line;
end Average;
