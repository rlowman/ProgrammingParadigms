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

with Ada.Text_IO, Ada.Float_Text_IO; --Stating version of ada is being used.
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
   -- Creating the function to use in the main portion of the program   
      PI : constant := 3.1415927; --Creating varible necessary for this function
   begin -- Start the process of the function
      return PI * R ** 2; -- the actual calculation of the area being returned 
   end ComputeArea; -- ending the process of the function
   
begin -- After setting up all the necessary helping functions, it is time to run
   -- the actual program
   Put_Line("To compute the area of a circle,"); -- Prints string to ask for r
   -- skips line in the process similiar to println in java
   Put("Enter its radius: "); -- Prints string to ask for r, stays on same line
   Get(Radius); -- Gets the data entered into the keyboard by user
   
   Area := ComputeArea(Radius); -- Uses function set up earlier to set Area
   
   Put("The area is "); -- Prints string letting the user know what the area is
   Put(Area); -- Prints the actual value of Area next to the previous string
   New_Line; -- Moves to next line
end CircleArea; -- Ends the program
