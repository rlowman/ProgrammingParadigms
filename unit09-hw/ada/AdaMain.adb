with Ada.Text_IO; use Ada.Text_IO;
with Temperature_Package;
use Temperature_Package;


procedure Namer is

   ATemp : Temperature_Package.Temperature;
   BaseTemp : Temperature_Package.Temperature;
   EndingTemp : Temperature_Package.Temperature;
   IncTemp : Temperature_Package.Temperature;

begin
   Init(ATemp, 'C', 0.0);
   Put("Enter the starting Temperature: ");
   New_Line;
   BaseTemp := ATemp.createTemperature();
   Put("Enter the ending Temperature: ");
   New_Line;
   EndingTemp := ATemp.createTemperature();
   Put("Enter the incrementing Temperature: ");
   New_Line;
   IncTemp := ATemp.createTemperature();


end namer;
