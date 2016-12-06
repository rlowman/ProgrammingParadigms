-- walkingbird_package.ads gives walkingBird-related declarations,
--
-- Completed by: Robert Lowman
-- Date: 12/5/2016
---------------------------------------------------

with Bird_Package; use Bird_Package;

package WalkingBird_Package is

  type WalkingBird_Type is new Bird_Type with private;

  ----------------------------------------------------
  -- A WalkingBirds's movement                       -
  -- Receive: A_WalkingBird, a WalkingBird_Type.     -
  -- Return: "flew past"                             -
  ----------------------------------------------------
  function Movement(A_WalkingBird : in WalkingBird_Type) return String;

private
  type WalkingBird_Type is new Bird_Type with
    record
      null;
    end record;

end WalkingBird_Package;
