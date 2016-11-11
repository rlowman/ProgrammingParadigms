-- namer.adb "test-drives" the Name type.
-- Begun by: Dr. Jump, CS 315 at King's College.
-- Completed by: Robert Lowman
-- Date: 26/3/15
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;
with Name_Package;
use Name_Package;


procedure Namer is

   AName : Name_Package.Name;


begin
   Init(aName, "John    ", "Paul    ", "Jones   ");

   pragma Assert( GetFirst(aName) = "John    ", "GetFirst() failed");
   pragma Assert( GetMiddle(aName) = "Paul    ", "GetMiddle() failed");
   pragma Assert( GetLast(aName) = "Jones   ", "GetLast() failed");
   pragma Assert( GetFullName(aName) = "John     Paul     Jones   ",
		  "GetFullName() failed");

   Put(aName); New_line;
   Put("All tests passed!"); New_line;

end namer;
