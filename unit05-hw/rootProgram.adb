-- rootProgram.adb determines the roots of an equation.
--
-- Input: a, the value for a in an equation.
--        b, the value for b in an equation.
--        c, the value for c in an equation.
--        
-- Output: The roots of the equation.
--
-- Completed by: Robert Lowman
-- Date: 10/10/2016
--------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;
with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;
with Ada.Numerics.Elementary_Functions;
use  Ada.Numerics.Elementary_Functions;

procedure QuadraticRoots is


   A, B, C, Root1, Root2, Arg : Float;
   Result : Integer;

   ------------------------------------------------
   -- QuadraticRoots() finds the roots of a quadratic function
   -- Receive: A, the value of A in the quadratic equation
   --          B, the value of B in the quadratic equation
   --          C, the value of C in the quadratic equation
   -- Passback: Root1, the first root of the equation,
   --           Root2, the second root of the equation   
   ------------------------------------------------
  
   function FindRoots(A : in Float; B : in Float; C : in Float;
			   Root1 : out Float; 
			   Root2 : out Float) return Integer is
   begin
      if A /= 0.0 then
	 Arg := (B ** 2.0) - (4.0 * A * C);
	 if Arg < 0.0 then
	    Put("\n*** quadraticRoots(): b^2 - 4ac is negative!\n");
	    Root1 := 0.0;
	    Root2 := 0.0;
	    return 0;
	 else 
	    Root1 := ((B * (-1.0)) + Sqrt(Arg))/ (2.0*A);
	    Root2 := ((B * (-1.0)) - Sqrt(Arg))/ (2.0*A);
	    return 1;
	 end if;
      else
	   Put("\n*** quadraticRoots(): a is zero!");
	   Root1 := 0.0;
	   Root2 := 0.0;
	   return 0;
      end if;
   end FindRoots;

begin                                           -- Prompt for input
   Put("Enter a: ");
   Get(A);
   Put("Enter b: ");
   Get(B);
   Put("Enter c: ");
   Get(C);

   Result := FindRoots(A, B, C, Root1, Root2);
   
   if Result = 1 then
      Put("The first part is ");
      Put(Root1);
      Put(" and the second part is ");
      Put(Root2);
   end if;
      
end QuadraticRoots;
