program Task5;

var n, k, l, i, p, r:integer;
massivintervals:array [1..10*10*10*10*10*10*10*10] of integer;
begin

writeln ('Введите два числа, первым напишите меньшее, а вторым большее');
read (k, n);
i := 2;
r := 2;
massivintervals[r] := 0;
massivintervals[r + 1] := 0;
massivintervals[1] := n;
p := 1;
while i - 2 <= k do
begin
r := 2;
l := 1;
repeat
if massivintervals[l] >= massivintervals[r] then
r := r + 1 else l := l + 1;
until l + r = p;

if massivintervals [l] >= massivintervals [r-1] then n := massivintervals[l] else
n := massivintervals[r];
massivintervals[1] := n;
massivintervals[i] := n div 2 + 1;
massivintervals[i + 1] := n - massivintervals[i] - 1;
i := i + 2;
massivintervals [1] := 0;
p := p + 2;
end;

if massivintervals[i + 1] > massivintervals[i] then massivintervals [i + 1] := n else
massivintervals [i] := n;
if massivintervals[i + 1] > massivintervals[i] then massivintervals[i] := k else 
massivintervals[i + 1] := k;

writeln (n, k);

end.