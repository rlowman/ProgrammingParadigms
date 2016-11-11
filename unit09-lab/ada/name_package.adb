-- name_package.adb defines operations for the Name type.
--
-- Begun by: Dr. Jump, CS 315 at King's College.
-- Completed by: Robert Lowman
-- Date: 11/10/2016
---------------------------------------------------------
with Ada.Text_IO; use Ada.Text_IO;

package body Name_Package is
  ----------------------------------------------
  -- Init initializes a Name variable          -
  -- Receive: theName, the Name variable;      -
  --          First, the first name;           -
  --          Middle, the middle name;         -
  --          Last, the last name.             -
  -- Return: theName, its fields set to First, -
  --               Middle, and Last.           -
  ----------------------------------------------

   -- replace this line with the definition of Init()
   procedure Init(TheName : out Name; First, Middle, Last : in String) is

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

   -- replace this line with the definition of GetFirst()
   function GetFirst(TheName : in Name) return String is
   begin
      return TheName.MyFirst;
   end GetFirst;


   -- replace this line with the doc and def of GetMiddle()
   function GetMiddle(TheName : in Name) return String is
   begin
      return TheName.MyMiddle;
   end GetMiddle;


   -- replace this line with the doc and def of GetLast()
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

   -- replace this line with the definition of GetFullName()
   function GetFullName(TheName : in Name) return String is
   begin
      return TheName.MyFirst &  " " &
      TheName.MyMiddle & " " &
      TheName.MyLast;
   end GetFullName;

   ----------------------------------------------
   -- Put(Name) displays a Name value.          -
   -- PRE: theName has been initialized.        -
   -- Receive: theName, a Name.                 -
   -- Output: theName, to the screen.           -
   ----------------------------------------------

   -- replace this line with the definition of Put()
    procedure Put(TheName : Name) is
    begin
       Put(TheName.MyFirst & " ");
       Put(TheName.MyMiddle & " ");
       Put(TheName.MyLast);
    end Put;
end Name_Package;
