program CopyFunction;

{$mode objfpc}{$H+}

uses {$IFDEF UNIX} {$IFDEF UseCThreads}
  cthreads, {$ENDIF} {$ENDIF}
  Classes, sysutils { you can add units after this };

{var
  Line: string;
  Part: string;
begin
  Line := 'Hello world';
  Part := Copy(Line, 7, 5);
  Writeln(Part);
  Writeln('Press enter key to close');
  Readln;
end.    }

{var
  Month: string;
  ShortName: string;
begin
  Write('Please input full month name e.g. January : ');
  Readln(Month);
  ShortName := Copy(Month, 1, 3);
  Writeln(Month, ' is abbreviated as : ', ShortName);
  Writeln('Press enter key to close');
  Readln;
end.   }

// Insert function
{var
  Line: string;
begin
  Line := 'Hello world';
  Insert('Pascal ', Line, 7);
  Writeln(Line);
  Writeln('Press enter key to close');
  Readln;
end. }

// Delete function
{var
  Line: string;
begin
  Line := 'Hello world';
  Delete(Line, 3, 2);
  Writeln(Line);
  Writeln('Press enter key to close');
  Readln;
end.}

// Trim function
{var
  Line: string;
begin
  Line := ' Hello ';
  Writeln('<', Line, '>');
  Line := Trim(Line);
  Writeln('<', Line, '>');
  Writeln('Press enter key to close');
  Readln;
end.}

// String replace function
{var
  Line: string;
  Line2: string;
begin
  Line := 'This is a test for string replacement';
  Line2 := StringReplace(Line, ' ', '-', [rfReplaceAll]);
  Writeln(Line);
  Writeln(Line2);
  Write('Press enter key to close');
  Readln;
end.}

var
  Line: string;
begin
  Line := 'This is a test for string replacement';
  Writeln(Line);
  Line := StringReplace(Line, ' ', '-', [rfReplaceAll]);
  Writeln(Line);
  Write('Press enter key to close');
  Readln;
end.






