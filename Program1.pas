type mas=array[1..1000]of integer;
type matr=array[1...1000]of mas;
type neir=array[1..1000]of matr;
var m:matr;
sh1,sh2,sh3:integer;
f:text;
sett:neir;

Procedure Start_generate(var sett:neir)
var sh1,sh2,sh3:integer;
begin
for sh1:=1 to 10 do
  for sh2:=1 to 10 do
    for sh3:=1 to 10 do
      sett[sh1][sh2][sh3]:=random(21)-10;
end;

begin
randomize;
Start_Generate(sett);

end;