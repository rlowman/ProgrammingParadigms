-- split.adb splits an input string about a specified position.
--
-- Input: Astring, a string,
--        Pos, an integer.
-- Precondition: pos is in Astring'Range.
-- Output: The substrings Astring(Astring'First..Pos) and
--                        Astring(Pos+1..Astring'Last).
--
-- Begun by: Dr. Jump for CS 315 at King's College
-- Completed by: Robert Lowman
-- Date: 10/4/2016
--------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;
with Ada.Strings.Fixed;
use  Ada.Strings.Fixed;

procedure Split is

   EMPTY_STRING : String := "                                        ";

   Astring, Part1, Part2 : String := EMPTY_STRING;
   Pos, Chars_Read       : Natural;

   ------------------------------------------------
   -- Split() splits a string in two.
   -- Receive: The_String, the string to be split,
   --          Position, the split index.
   -- PRE: 0 < Position <= The_String.length().
   --     (Ada arrays are 1-relative by default)
   -- Passback: First_Part - the first substring,
   --           Last_Part - the second substring.
   ------------------------------------------------
   -- Replace this line with definition of split
   procedure Split(The_String : in String; Position : in Integer;
		   First_Part : out String; 
		   Last_Part : out String) is
   begin
      Move(The_String(The_String'First.. Position - 1), First_Part);
      Move(The_String(Position..The_String'Last), Last_Part);
   end Split;

begin                                           -- Prompt for input
   Put("To split a string, enter the string: ");
   Get_Line(Astring, Chars_Read);
   Put("Enter the split position: ");
   Get(Pos);

   Split(Astring, Pos, Part1, Part2);

   Put("The first part is ");
   Put_Line(Part1);
   Put("and the second part is ");
   Put_Line(Part2);

end Split;
