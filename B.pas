type map:
var 
xx:string;
map<string,int> gr;
arr:array[0..100005]of string;
cost,gcost:array[0..100005]of integer;
var i,k,m,n,x,z,ans:int64;
begin
    readln(n,k,m);
    for i:=0 to n-1 do
        readln(arr[i]);
        
    for i:=0 to n-1 do
        readln(cost[i]);
        
    for i:=0 to k-1 do
      begin
        readln(x);
        while x>0 do 
          begin
          x-=1;
          readln(z); 
          z-=1;
          gcost[i]:=min(gcost[i],cost[z]);
          gr[arr[z]]:=i;
          end;
      end;
    ans=0;
for i:=0 to m do
    begin
    readln(xx);
    ans+=gcost[gr[xx]];
    end;
writeln(ans);
end.