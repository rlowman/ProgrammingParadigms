-- goose_package.ads gives Goose-related declarations,
--
--  and derives Goose from Bird.
-- Begun by: Dr. Jump for CS 315 at King's College
-- Completed by: Robert Lowman
-- Date: 11/29/2016
---------------------------------------------------

with Bird_Package; use Bird_Package;

package Goose_Package is

  type Goose_Type is new Bird_Type with private;

 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose.                      -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------
 function  Call(A_Goose : in Goose_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose.                       -
 -- Return: "Goose".                                 -
 -----------------------------------------------------
 function  Type_Name(A_Goose : in Goose_Type) return String;

private
  type Goose_Type is new Bird_Type with
      record
        null;
      end record;

end Goose_Package;
