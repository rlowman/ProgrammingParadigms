-- logtable.adb computes a table of logarithms.
--
-- Input: start, stop, increment, three reals.
-- Precondition: increment is positive.
-- Output: A table of logarithms beginning with log(start),
--         ending with log(stop), with intervals of increment.
--
-- Begun by: Dr Jump for CS 315 at King's College
-- Completed by: Robert Lowman
--------------------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;
with Ada.Numerics.Elementary_Functions;
use  Ada.Numerics.Elementary_Functions;

procedure LogTable is

   Start, Stop, Increment, Value : Float;

begin
   -- prompt for input
   Put_Line("To print a table of logarithms,");
   Put(" enter the start, stop, and increment values: ");
   Get(Start); Get(Stop); Get(Increment);

   while Start <= Stop loop
      Put("The logarithm of ");
      Put(Start);
      Put(" is ");
      Value := log(Start, 10.0);
      Put(Value);
      New_Line;
      New_Line;
      Start := Start + Increment;
   end loop;
     

end LogTable;
