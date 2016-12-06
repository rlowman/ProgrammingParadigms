-- flyingbird_package.adb gives Flyingbird-related definitions
--
-- Completed by: Robert Lowman
-- Date: 12/5/16
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body FlyingBird_Package is

 ----------------------------------------------------
 -- A FlyingBirds's movement                        -
 -- Receive: A_FlyingBird, a FlyingBird_Type.       -
 -- Return: "flew past"                             -
 ----------------------------------------------------
 function Movement(A_FlyingBird : in FlyingBird_Type) return String is
   begin
    return "flew past";
   end Call;

end FlyingBird_Package;
