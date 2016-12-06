-- ostrich_package.ads gives Owl-related declarations,
--  and derives Owl from Bird.
--
-- Completed by: Robert Lowman
-- Date: 12/5/2016
---------------------------------------------------

with WalkingBird_Package; use WalkingBird_Package;

package Ostrich_Package is

  type Ostrich_Type is new WalkingBird_Type with private;

 ----------------------------------------------------
 -- A Ostrich's Call (Over-rides Bird.Call())           -
 -- Receive: An_Ostrich, an Ostrich_Type.                   -
 -- Return: "Snork"                                 -
 ----------------------------------------------------
 function Call(An_Ostrich : in Ostrich_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Ostrich                         -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: An_Ostrich, an Ostrich_Type.                    -
 -- Return: "Ostrich".                                   -
 -----------------------------------------------------
 function Type_Name(An_Ostrich : in Ostrich_Type) return String;

private
  type Ostrich_Type is new WalkingBird_Type with
    record
      null;
    end record;

end Ostrich_Package;
