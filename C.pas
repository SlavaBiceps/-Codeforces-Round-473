var n,i:int64;
begin
readln(n);
if n<=5 then writeln('-1')
  else 
    begin
    writeln('1 2');
    writeln('1 3');
    writeln('1 4');
    writeln('2 5');
    writeln('2 6');
    for i:=7 to n do
        writeln('1 ',i);
    end;
for i:=2 to n do
  writeln('1 ',i);
end.