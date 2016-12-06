-- flyingbird_package.ads gives FlyingBird-related declarations,
--
-- Completed by: Robert Lowman
-- Date: 12/5/2016
---------------------------------------------------

with Bird_Package; use Bird_Package;

package FlyingBird_Package is

  type FlyingBird_Type is new Bird_Type with private;

  ----------------------------------------------------
  -- A FlyingBirds's movement                        -
  -- Receive: A_FlyingBird, a FlyingBird_Type.       -
  -- Return: "flew past"                             -
  ----------------------------------------------------
  function Movement(A_FlyingBird : in FlyingBird_Type) return String;

private
  type FlyingBird_Type is new Bird_Type with
    record
      null;
    end record;

end FlyingBird_Package;
