-- yearcodes.adb converts academic year codes to corresponding years.
--
-- Begun by: Dr. Jump for CS 315 at King's College
-- Finished by: Robert Lowman
--
-- Input: year, a string
-- Precondition: year is one of "freshman", "sophomore", "junior", "senior"
-- Output: The year code (1, 2, 3 or 4) corresponding to year.
----------------------------------------------------
with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure YearCodes is

   Year : String(1..9) := "         ";
   CharsRead : Natural;

   function GetYearCode(Year : String) return Integer is 
   begin
      if Year = "freshman " then
	 return 1;
      elsif Year = "sophomore" then
	 return 2;
      elsif Year = "junior   " then
	 return 3;
      elsif Year = "senior   " then
	 return 4;
      else 
	 return 0;
      end if;
   end GetYearCode;

begin
   Put("Enter your academic year: ");           -- Prompt for input
   Get_Line(Year, CharsRead);                   -- Input
   Put( GetYearCode(Year) );                       -- Convert and output
   New_Line;
end YearCodes;
