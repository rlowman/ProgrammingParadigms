-- letterGrade.adb converts numeric grade to corresponding letter grade.
--
-- Author: Robert Lowman
--
-- Input: grade, an int
-- Precondition: grade is between 0-100
-- Output: The letter grade (A, B, C, D, or E) corresponding to the numeric grade.
----------------------------------------------------
with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure LetterCodes is
   
   Grade : Integer;
   
   function GetLetterCode(Grade : in Integer) return Character is 
      
      Temp : Integer := Grade / 10;
   begin
      case Temp is
	 when 10 | 9        => return 'A';
	 when 8             => return 'B';
	 when 7             => return 'C';
	 when 6             => return 'D';
	 when others        => return 'F';
      end case; 
	   
   end GetLetterCode;

begin
   Put("Enter your numeric grade(0-100): ");        -- Prompt for input
   Get(Grade);                                      -- Input
   Put( GetLetterCode(Grade) );                       -- Convert and output
   New_Line;
end LetterCodes;
