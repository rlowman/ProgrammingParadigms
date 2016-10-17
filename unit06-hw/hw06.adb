-- hw06.adb recieves a
-- Precondition: size > 0.
-- Output: the values of the array
--
-- Completed by: Robert Lowman
-- Date: 10/17/2016
-----------------------------------------------

with Ada.Text_IO; 
use Ada.Text_IO;             
with Ada.Float_Text_IO; 
use Ada.Float_Text_IO; 
with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure PrintArray is


   type Vector is array ( Positive range <> ) of Float;
   
   Size : Integer;

----------------------------------------------
-- read() reads in integers to an array      -
-- Receive: anArray, an array to write to    -
----------------------------------------------
   procedure Read(AnArray : out Vector) is
     Temp : Float;
   begin
      for I in AnArray'First..AnArray'Last
      loop
	 Get(Temp);
	 AnArray(I) := Temp;
      end loop;
   end Read;   
   
--------------------------------------------------
-- print() prints all the values in the given array     
-- Receive: anArray, an array of numbers         
--------------------------------------------------
   procedure Print(AnArray : in Vector) is
      
   begin
      for I in AnArray'First..AnArray'Last
      loop
	 Put(AnArray(I));
	 New_Line;
      end loop;
   end Print;
     
begin
   Put("Enter the size of the array:  ");
   Get(Size);
   
   declare 
   begin
      AnArray : Vector(0..Size);
   end
     
   New_Line;
   Put("Enter that many doubles: ");
   New_Line; 
   Read(AnArray);
   Put("Results: ");
   New_Line;
   Print(AnArray);
end PrintArray;
