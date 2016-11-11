-- name_package.ads declares the Name type and its operations.
--
-- Begun by: Dr. Jump, CS 315 at King's College.
-- Completed by: Robert Lowman
-- Date: 11/10/2016
--------------------------------------------------------------

package Name_Package is

  type Name is private;

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
   procedure Init(TheName : out Name; First, Middle, Last : in String);

 ----------------------------------------------
 -- GetFirst(Name) retrieves Name.myFirst     -
 -- Receive: theName, a Name.                 -
 -- PRE: theName has been initialized.        -
 -- Return: theName.myFirst.                  -
 ----------------------------------------------

  -- replace this line with the definition of GetFirst()
  function GetFirst(TheName : in Name) return String;


  -- replace this line with the doc and def of GetMiddle()
  function GetMiddle(TheName : in Name) return String;


  -- replace this line with the doc and def of GetLast()
  function GetLast(TheName : in Name) return String;


 --------------------------------------------------
 -- GetFullName(Name) retrieves Name as a String  -
 -- Receive: theName, a Name.                     -
 -- PRE: theName has been initialized.            -
 -- Return: a String representation of theName    -
 --------------------------------------------------

  -- replace this line with the definition of GetFullName()
  function GetFullName(TheName : in Name) return String;

  ----------------------------------------------
  -- Put(Name) displays a Name value.          -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name.                 -
  -- Output: theName, to the screen.           -
  ----------------------------------------------

  -- replace this line with the definition of Put()
   procedure Put(TheName : Name);
private

  NAME_SIZE : constant Integer := 8;

  type Name is
     record
  MyFirst : String( 1..NAME_SIZE );
  MyMiddle : String( 1..NAME_SIZE );
  MyLast : String( 1..NAME_SIZE );
     end record;

end Name_Package;
