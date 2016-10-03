-- multiplicationtable.adb computes a table of multiples.
--
-- Input: start, stop, increment, three reals.
-- Precondition: increment is positive.
-- Output: A table of multiples
--
-- Author: Robert Lowman
--------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure MultiplicationTable is

   Size, Value : Integer;
   
   procedure DisplayTable(Size : in Integer) is
      
   begin   
      
      for I in Integer range 1 .. Size loop
	 for J in Integer range 1 .. Size loop
	    Value := I * J;
	    Put(Value);
	    Put(" ");
	 end loop;
	 New_Line;
      end loop;
      
   end DisplayTable;


begin
   -- prompt for input
   Put_Line("To print a multiplication table, enter the value to stop at: ");
   Get(Size); 
   
   DisplayTable(Size);
     
end MultiplicationTable;
