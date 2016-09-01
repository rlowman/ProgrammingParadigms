-------------------------------------------------------------
-- CircleArea.adb
-- Computes the area of a circle.
--
-- Input: The radius of a circle.
-- Precondition: The radius is a positive number.
-- Output: The area of the circle.
-- 
-- Begun by Dr Jump for CS 315 at King's College
-- Completed by: Robert Lowman
-- Date: 9/1/16
-------------------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO; -- stating which version of ada is being used.
use Ada.Text_IO, Ada.Float_Text_IO;

procedure CircleArea is -- starting the set-up of the program.
   
   Radius, Area : Float; -- creating the varibles neccesary for the program
   
   ----------------------------------------------------------
   -- Function that computes the area of a circle.
   --
   -- Parameter: R The radius of the circle.
   -- Precondition: R >= 0.0
   -- Returns: The area of the circle.
   ----------------------------------------------------------
   function ComputeArea(R : in Float) return Float is 
   -- creating the function to use in the main portion of the program   
      PI : constant := 3.1415927; -- creating varible necessary for this function
   begin -- start the process of the function
      return PI * R ** 2; -- the actual 
   end ComputeArea;
   
begin
   Put_Line("To compute the area of a circle,");
   Put("Enter its radius: ");
   Get(Radius);
   
   Area := ComputeArea(Radius);
   
   Put("The area is ");
   Put(Area);
   New_Line;
end CircleArea;
