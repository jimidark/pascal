program Functions;

{$mode objfpc}{$H+}

uses {$IFDEF UNIX} {$IFDEF UseCThreads}
  cthreads, {$ENDIF} {$ENDIF}
  Classes, unit1 { you can add units after this };

{  function DoubleNumber(x: integer): integer;
  begin
    Result := x * 2;
  end;
  // Main
var
  MyNum: integer;
begin
  Writeln('The double of 5 is : ', DoubleNumber(5));
  MyNum := DoubleNumber(5);
  Writeln('The double of 5 is : ', MyNum);

  if DoubleNumber(5) > 10 then
    Writeln('This number is larger than 10')
  else
    Writeln('This number is equal or less than 10');
  Readln;
end. }

{  procedure DoSomething(x: integer);
  begin
    x := x * 2;
    Writeln('From inside procedure: x = ', x);
  end;
  // main
var
  MyNumber: integer;
begin
  MyNumber := 5;
  DoSomething(MyNumber);
  Writeln('From main program, MyNumber = ', MyNumber);
  Writeln('Press enter key to close');
  Readln;
end. }

// Call by reference
 { procedure DoSomething(var x: integer);
  begin
    x := x * 2;
    Writeln('From inside procedure: x = ', x);
  end;
  // main
var
  MyNumber: integer;
begin
  MyNumber := 5;
  DoSomething(MyNumber);
  Writeln('From main program, MyNumber = ', MyNumber);
  Writeln('Press enter key to close');
  Readln;
end. }

{  procedure SwapNumbers(var x, y: integer);
  var
    Temp: integer;
  begin
    Temp := x;
    x := y;
    y := Temp;
  end;
  // main
var
  A, B: integer;
begin
  Write('Please input value for A: ');
  Readln(A);
  Write('Please input value for B: ');
  Readln(B);
  SwapNumbers(A, B);
  Writeln('A = ', A, ', and B = ', B);
  Writeln('Press enter key to close');
  Readln;
end.}




