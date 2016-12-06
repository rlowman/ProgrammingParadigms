-- ostrich_package.adb gives Ostrich-related definitions
--  by over-riding Bird-related definitions.
--
-- Completed by: Robert Lowman
-- Date: 12/4/16
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Ostrich_Package is

 ----------------------------------------------------
 -- An Ostrich_Package's Call (Over-rides Bird.Call())          -
 -- Receive: An_Ostrich, an Ostrich_Type.                   -
 -- Return: "Snork"                                -
 ----------------------------------------------------
 function Call(An_Ostrich : in Ostrich_Type) return String is
   begin
    return "Snork";
   end Call;

 ------------------------------------------------------------
 -- Determine type of an Ostrich (Over-rides Bird.Type_Name()) -
 -- Receive: An_Ostrich, an Ostrich_Type.                          -
 -- Return: "Ostrich".                                        -
 -----------------------------------------------------------
 function Type_Name(An_Ostrich : in Ostrich_Type) return String is
   begin
    return "Ostrich";
   end Type_Name;

end Ostrich_Package;
