program GreatestCommonDivisor (input,output);

type
    natural = 1..maxint;

var
    a, b:integer;

{$I ReadInt}
{$I NotAgain}

function GCD(a, b:natural):integer;
begin
    if a = b then
    GCD := a
    else if a > b then
        GCD:= GCD(a-b, b)
    else
        GCD := GCD(a, b-a)
end;

begin {main}
    write('Greatest Common Divisor');
    writeln;

    repeat
        write('1st nummber (1 .. ', maxint:0, ') = ');

        while not ReadInt (a, 1, maxint) do
            write('Invalid number, 1st number = ');
        
        write('2nd number (1 ..', maxint:0, ') = ');

        while not ReadInt (b, 1, maxint) do
            write('Invalid number, 2nd number = ');
        
        write('GCD(', a:0, ',', b:0, ') = ', GCD(a, b):0);

        writeln;
    until (NotAgain);
end;
