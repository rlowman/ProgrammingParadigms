-- owl_package.ads gives Owl-related declarations,
--  and derives Owl from Bird.
--
-- Begun by: Dr. Jump for CS 315 at King's College
-- Completed by: Robert Lowman
-- Date: 11/29/2016
---------------------------------------------------

with FlyingBird_Package; use FlyingBird_Package;

package Kiwi_Package is

  type Kiwi_Type is new WalkingBird_Type with private;

 ----------------------------------------------------
 -- A Kiwi's Call (Over-rides Bird.Call())           -
 -- Receive: A_Kiwi, a Kiwi_Type.                   -
 -- Return: "twee-do"                               -
 ----------------------------------------------------
 function Call(A_Kiwi : in Kiwi_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Kiwi                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Kiwi, a Kiwi_Type.                    -
 -- Return: "Kiwi".                                   -
 -----------------------------------------------------
 function Type_Name(A_Kiwi : in Kiwi_Type) return String;

private
  type Owl_Type is new WalkingBird_Type with
    record
      null;
    end record;

end Owl_Package;
