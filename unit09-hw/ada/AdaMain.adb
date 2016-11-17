with Ada.Text_IO; use Ada.Text_IO;
with Temperature_Package;
use Temperature_Package;


procedure Namer is

   ATemp : Temperature_Package.Temperature;


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
