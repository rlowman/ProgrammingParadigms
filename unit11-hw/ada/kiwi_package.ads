-- kiwi_package.ads gives Kiwi-related declarations,
--  and derives Owl from Bird.
--
-- Completed by: Robert Lowman
-- Date: 12/5/2016
---------------------------------------------------

with WalkingBird_Package; use WalkingBird_Package;

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
  type Kiwi_Type is new WalkingBird_Type with
    record
      null;
    end record;

end Kiwi_Package;
