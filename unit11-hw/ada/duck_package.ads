-- duck_package.ads gives Duck-related declarations,
--
--  and derives Duck from Bird.
-- Begun by: Dr. Jump for CS 315 at King's College
-- Completed by: Robert Lowman
-- Date: 11/29/2016
---------------------------------------------------

with FlyingBird_Package; use FlyingBird_Package;

package Duck_Package is

  type Duck_Type is new FlyingBird_Type with private;

 ----------------------------------------------------
 -- A Duck's Call (Over-rides Bird.Call())          -
 -- Receive: A_Duck, a Duck_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
 function Call(A_Duck : in Duck_Type) return String;

 ------------------------------------------------------------
 -- Determine type of a Duck (Over-rides Bird.Type_Name()) -
 -- Receive: A_Duck, a Duck_Type.                          -
 -- Return: "Duck".                                        -
 -----------------------------------------------------------
 function Type_Name(A_Duck : in Duck_Type) return String;

private
  type Duck_Type is new FlyingBird_Type with
    record
      null;
    end record;

end Duck_Package;
