-- namer.adb "test-drives" the Name type.
-- Begun by: Dr. Jump, CS 315 at King's College.
-- Completed by: Robert Lowman
-- Date: 26/3/15
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Fixed;
use Ada.Strings.Fixed;

procedure Namer is

   NAME_SIZE : constant Integer := 8;

   type Name is
      record
	 MyFirst, MyMiddle, MyLast : String(1..NAME_SIZE);
      end record;

   AName : Name ;

   NameString : String(1..9) := "         ";
   CharsRead : Natural;


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

  ----------------------------------------------
  -- GetMiddle(Name) retrieves Name.myMiddle   -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myMiddle.                 -
  ----------------------------------------------

   function GetMiddle(TheName : in Name) return String is
   begin
      return TheName.MyMiddle;
   end GetMiddle;

  ----------------------------------------------
  -- GetLast(Name) retrieves Name.myLast       -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myLast.                   -
  ----------------------------------------------

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
      return GetFirst(TheName) & " " & GetMiddle(TheName) & " " & GetLast(TheName);
   end GetFullName;


  ----------------------------------------------
  -- Put(Name) displays a Name value.          -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name.                 -
  -- Output: theName, to the screen.           -
  ----------------------------------------------

   procedure Put(TheName : in Name) is
   begin
       Put(GetFullName(TheName));
   end Put;

  ----------------------------------------------
  -- SetFirst() sets the first name            -
  -- PRE: theName has been initialized         -
  -- Receive: aFirst, the new first name       -                 -
  -- Passback: TheName, a Name                 -
  ----------------------------------------------

   procedure SetFirst(AFirst : in String;
		      TheName : out Name) is
   begin
      TheName.MyFirst := AFirst;
   end SetFirst;

  ----------------------------------------------
  -- SetMiddle() sets the middle name          -
  -- PRE: theName has been initialized         -
  -- Receive: aMiddle, the new middle name     -
  -- Passback: TheName, a Name                  -
  ----------------------------------------------

   procedure SetMiddle(AMiddle : in String;
		       TheName : out Name) is
   begin
      TheName.MyMiddle := AMiddle;
   end SetMiddle;

  ----------------------------------------------
  -- SetLast() sets the last name              -
  -- PRE: theName has been initialized         -
  -- Receive: aLast, the new last name         -
  -- Passback: TheName, a Name                  -
  ----------------------------------------------

   procedure SetLast(ALast : in String;
		     TheName : out Name) is
   begin
      TheName.MyLast := ALast;
   end SetLast;

  ------------------------------------------------
  -- lfmi() returns the name in form last, first -
  --       middle inital.                        -
  -- PRE: theName has been initialized           -
  -- Receive: TheName, a Name                    -
  -- Output: a String in the proper form         -
  ------------------------------------------------

   function Lfmi(TheName : in Name) return String is
      Middle : String := TheName.MyMiddle;
      Initial : String := Middle(Middle'First..1);
   begin
      return TheName.MyLast & ", " & TheName.MyFirst & " " &
	Initial;
   end Lfmi;

  -----------------------------------------------
  -- read() reads in a full name                -
  -- PRE: theName has been initialized          -
  -- Passback: theName, a Name                  -
  -----------------------------------------------

  procedure Read(TheName : out Name) is
  begin
     Get_Line(TheName.MyFirst, CharsRead);
     Get_Line(TheName.MyMiddle, CharsRead);
     Get_Line(TheName.MyLast, CharsRead);
  end Read;

  -- Start of execution
begin
   Init(aName, "John    ", "Paul    ", "Jones   ");

   pragma Assert( GetFirst(aName) = "John    ", "GetFirst() failed");
   pragma Assert( GetMiddle(aName) = "Paul    ", "GetMiddle() failed");
   pragma Assert( GetLast(aName) = "Jones   ", "GetLast() failed");
   pragma Assert( GetFullName(aName) = "John     Paul     Jones   ",
		  "GetFullName() failed");

   pragma Assert( Lfmi(aName) = "Jones    , John   P.");

   SetFirst("Robert  ", aName);
   SetMiddle("Craig   ", aName);
   setLast("Lowman  ", aName);

   pragma Assert( GetFullName(aName) = "Robert  Craig   Lowman   ");

   Put("Enter the name:");
   New_Line;
   Read(AName);

   Put("The name read in:");
   New_Line;

   Put(aName); New_line;
   Put("All tests passed!"); New_line;

end namer;
