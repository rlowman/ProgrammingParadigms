-- walkingbird_package.adb gives walkingbird-related definitions
--
-- Completed by: Robert Lowman
-- Date: 12/5/16
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body WalkingBird_Package is

 ----------------------------------------------------
 -- A WalkingBirds's movement                       -
 -- Receive: A_WalkingBird, a WalkingBird_Type.     -
 -- Return: "walked past"                             -
 ----------------------------------------------------
 function Movement(A_WalkingBird : in WalkingBird_Type) return String is
   begin
    return "walked past";
  end Movement;

end WalkingBird_Package;
