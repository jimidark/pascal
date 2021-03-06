program dateTime;

{$mode objfpc}{$H+}

uses {$IFDEF UNIX} {$IFDEF UseCThreads}
  cthreads, {$ENDIF} {$ENDIF}
  Classes,
  SysUtils { you can add units after this };

{begin
  Writeln('Current date and time: ', DateTimeToStr(Now));
  Writeln('Current date and time: ', Now);
  Writeln('Current date is ', DateToStr(Now));
  Writeln('Current time is ', TimeToStr(Now));
  Writeln('Current date is ', DateToStr(Date));
  Writeln('Current time is ', TimeToStr(Time));
  Writeln('Current date is ', DateTimeToStr(Date));
  Writeln('Current time is ', DateTimeToStr(Time));
  Writeln('Current date is ',
    FormatDateTime('yyyy-mm-dd hh:nn:ss', Date));
  Writeln('Current time is ',
    FormatDateTime('yyyy-mm-dd hh:nn:ss', Time));
  Write('Press enter key to close');
  Readln;
end.}

{begin
  Writeln('Current date and time is ',
    FormatDateTime('yyyy-mm-dd hh:nn:ss', Now));
  Writeln('Yesterday time is ',
    FormatDateTime('yyyy-mm-dd hh:nn:ss', Now - 1));
  Writeln('Tomorrow time is ',
    FormatDateTime('yyyy-mm-dd hh:nn:ss', Now + 1));
  Writeln('Today + 12 hours is ',
    FormatDateTime('yyyy-mm-dd hh:nn:ss', Now + 1 / 2));
  Writeln('Today + 6 hours is ',
    FormatDateTime('yyyy-mm-dd hh:nn:ss', Now + 1 / 4));
  Write('Press enter key to close');
  Readln;
end. }

{var
  ADate: TDateTime;
begin
  ADate := EncodeDate(1975, 11, 16);
  Writeln('My date of birth is: ', FormatDateTime('yyyy-mm-dd', ADate));
  Write('Press enter key to close');
  Readln;
end.}

{var
  ATime: TDateTime;
begin
  ATime := EncodeTime(19, 22, 50, 0);
  Writeln('Almughrib prayer time is: ', FormatDateTime('hh:nn:ss', ATime));
  Write('Press enter key to close');
  Readln;
end.}

{var
  Year2012: TDateTime;
begin
  Year2012 := EncodeDate(2012, 1, 1);
  if Now < Year2012 then
    Writeln('Year 2012 is not coming yet')
  else
    Writeln('Year 2012 is already passed');
  Write('Press enter key to close');
  Readln;
end.}

{var
  Year2012: TDateTime;
  Diff: double;
begin
  Year2012 := EncodeDate(2012, 1, 1);
  Diff := Abs(Now - Year2012);
  if Now < Year2012 then
    Writeln('Year 2012 is not coming yet, there are ',
      Format('%0.2f', [Diff]), ' days Remaining ')
  else
    Writeln('First day of January 2012 is passed by ',
      Format('%0.2f', [Diff]), ' Days');
  Write('Press enter key to close');
  Readln;
end.}





