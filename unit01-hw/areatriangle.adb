-------------------------------------------------------------
-- CircleArea.adb
-- Computes the area of a triangle.
--
-- Input: The radius of a triangle.
-- Precondition: The height is a positive number.
-- Precondition: The width is a positive number.
-- Output: The area of the triangle.
-- 
-- Completed by: Robert Lowman
-- Date: 9/7/16
-------------------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Float_Text_IO;

procedure CircleArea is
   
   Height, Width, Area : Float;
   
   ----------------------------------------------------------
   -- Function that computes the area of a circle.
   --
   -- Parameter: R The radius of the circle.
   -- Precondition: R >= 0.0
   -- Returns: The area of the circle.
   ----------------------------------------------------------
   function ComputeArea(H : in Float; W : in Float) return Float is 
   -- function declaration   
      HALF : constant := 0.5;
      -- constant declaration
   begin -- start the function
      return HALF * H * W; -- calculate the area of the triangle
   end ComputeArea; -- end the function
   
begin -- begin the main program
   Put_Line("To compute the area of a triangle,"); -- print string, next line
   Put("Enter its height: "); -- print string stay on same line
   Get(Height); -- get data from keyboard and set to variable
   New_Line; -- go to next line
   Put("Enter its width: "); -- print string stay on same line
   Get(Width); -- get data from keyboard and set value to variable
   
   Area := ComputeArea(Height, Width); -- set variable equal to function return value
   
   Put("The area is "); -- print string stay on same line
   Put(Area); -- print area
   New_Line; -- skip line
end CircleArea; -- end program
