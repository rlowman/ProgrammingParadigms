-- namer.adb "test-drives" the Name type.
-- Begun by: Dr. Jump, CS 315 at King's College.
-- Completed by: Robert Lowman
-- Date: 26/3/15
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

procedure Namer is

   NAME_SIZE : constant Integer := 8;

   type Name is
      record
	 MyFirst : String := 1..NAME_SIZE;
	 MyMiddle : String := 1..NAME_SIZE;
	 MyLast : String := 1..NAME_SIZE;
      end record;
   
   AName : Name ;


  ----------------------------------------------
  -- Init initializes a Name variable          -
  -- Receive: theName, the Name variable;      -
  --          First, the first name;           -
  --          Middle, the middle name;         -
  --          Last, the last name.             -
  -- Return: theName, its fields set to First, -
  --               Middle, and Last.           -
  ----------------------------------------------

   procedure Init(TheName: out Name;
		  First, Middle, Last : in String) is

   begin
      TheName.MyFirst := First;
      TheName.MyMiddle := Middle;
      TheName.MyLast := Last;
   end Init;

  ----------------------------------------------
  -- GetFirst(Name) retrieves Name.myFirst     -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myFirst.                  -
  ----------------------------------------------

   function GetFirst(TheName : in Name) return String is
   begin
      return TheName.MyFirst;
   end GetFirst;

   function GetMiddle(TheName : in Name) return String is
   begin
      return TheName.MyMiddle;
   end GetMiddle;

   function GetLast(TheName : in Name) return String is
   begin
      return TheName.MyLast;
   end GetLast;

  --------------------------------------------------
  -- GetFullName(Name) retrieves Name as a String  -
  -- Receive: theName, a Name.                     -
  -- PRE: theName has been initialized.            -
  -- Return: a String representation of theName    -
  --------------------------------------------------

   function GetFullName(TheName : in Name) return String is
   begin
      return GetFirst(TheName) & " " & GetMiddle(TheName) & " " & GetLast(TheName) 
   end GetFullName;
	
	
  ----------------------------------------------
  -- Put(Name) displays a Name value.          -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name.                 -
  -- Output: theName, to the screen.           -
  ----------------------------------------------

  -- replace this 

begin
   Init(aName, "John    ", "Paul    ", "Jones   ");

--   pragma Assert( GetFirst(aName) = "John    ", "GetFirst() failed");
--   pragma Assert( GetMiddle(aName) = "Paul    ", "GetMiddle() failed");
--   pragma Assert( GetLast(aName) = "Jones   ", "GetLast() failed");
--   pragma Assert( GetFullName(aName) = "John     Paul     Jones   ",
--		  "GetFullName() failed");

--   Put(aName); New_line;
   Put("All tests passed!"); New_line;

end namer;
