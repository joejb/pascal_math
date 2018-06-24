program PrimeFactors (input,output);

var
    i:integer;
    factor:integer;

    procedure try(var i:integer; f:integer);
    var
        exponent:integer;
    begin
        if i mod f = 0 then
            begin
                write(f:0);
                exponent := 0;
                repeat
                    i := i div f;
                    exponent := exponent + 1;
                until (i mod f <> 0);

                if exponent > 1 then
                    write('^', exponent:0);
                writeln;
            end;
    end; {try}

begin {main}
    write('Prime Factors of Integers');
    writeln;
    write('integer (0 ends program) = ');

    readln(i);
    while i <> 0 do 
        begin
            if i < 0 then
            begin
                write('-');
                i := -i;
            end;
            write('1');
            try (i, 2);
            factor := 3;
            while factor <= i div 2 do 
                begin
                    try (i, factor);
                    factor := factor + 2;
                end;
            if i <> 1 then {i is prime}
                write(i:0);
            write('integer (0 ends program) = ');
            readln(i);
        end;
end.
