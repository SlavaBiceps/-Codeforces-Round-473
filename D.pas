type mass=array[1..1001]of string;
type masi=array[1..1001]of integer;
var a,b,c,kol,d,e,k,i:integer;
mas:mass;
mas1:masi;
s:string;

Procedure podshet(var mas:mass; var mas1:masi);
var i,k,n:integer;
m,m1:mass;
m2:masi;
ss,sss:string;
begin
m:=mas;
m2:=mas1;
k:=1;
for i:=1 to length(s) do
  begin
  if s[i]=' ' then m[k]:=s[i-1]+m[k];
  if s[i]='-' then k:=k+1;
  end;
for i:=2 to k do
  begin
  if m[i]=m[i-1] then 
    begin
    m2[i]:=m2[i-1]+1;
    m2[i-1]:=0;
    m1[i-1]:='';
    m1[i]:=m[i];
    end;
  end;
sss:=' ';
for i:=1 to k do 
  if m2[i]>0 then ss:=ss+sss+m1[i]+m2[i];
if ss<=s then s:=ss;
end;

Procedure pereb(var kol:integer; var mas1:masi; var mas:mass; var k:integer);
var i:integer;
begin
for i:=kol to length(s) do
  begin 
  writeln(length(s),' ',i);
  s[i]:='-';
  podshet(mas,mas1);
  kol:=kol+1;
  pereb(kol,mas1,mas,k);
  kol:=kol-1;
    writeln(length(s),' ',i);
  s[i]:=' ';
  end;
end;


begin
for i:=1 to 1001 do
  mas[i]:='';
readln(s);
kol:=1;
pereb(kol,mas1,mas,k);
end.

