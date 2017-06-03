program Constant;

{$mode objfpc}{$H+}

uses {$IFDEF UNIX} {$IFDEF UseCThreads}
  cthreads, {$ENDIF} {$ENDIF}
  Classes, sysutils { you can add units after this };

const
  GallonPrice = 6.5;
var
  Payment: integer;
  Consumption: integer;
  Kilos: single;
begin
  Write('How much did you pay for your car''s fuel: ');
  Readln(Payment);
  Write('What is the consumption of your car? (Kilos per Gallon): ');
  Readln(Consumption);
  Kilos := (Payment / GallonPrice) * Consumption;
  Writeln('This fuel will keep your car running for : ',
    Format('%0.1f', [Kilos]), ' Kilometers');
  Write('Press enter');
  Readln;
end.



