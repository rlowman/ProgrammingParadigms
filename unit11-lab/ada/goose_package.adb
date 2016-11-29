-- goose_package.adb gives Goose-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Jump for CS 315 at King's College
-- Completed by: Robert Lowman
-- Date: 11/29/2016
---------------------------------------------------

package body Goose_Package is

 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose_Type.                 -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------
 function Call(A_Goose : in Goose_Type) return String is
 begin
   return "Honk!";
 end Call;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose_Type.                  -
 -- Return: "Goose".                                 -
 -----------------------------------------------------
 function Type_Name(A_Goose : in Goose_Type) return String is
 begin
   return "Goose";
 end Type_Name;

end Goose_Package;
