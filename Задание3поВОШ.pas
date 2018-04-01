program infa;
var massiv:array [1..12] of integer;
var windowsits:array [1..12] of integer;
var wallsits:array [1..12] of integer;
var nomercupe:array [1..9] of integer;
var nomercupewindow:array [1..9] of integer;
var nomercupefree:array [1..9] of integer;
var nomercupenomercupefreenext [1...9] of integer;
var i, a, n, k, l, r, o:integer;

begin

writeln ('Введите 12 чисел >0 и <=54');
for i:= 1 to 12 do readln (massiv[i]);
i := 1;
a := 1;
k := 1;
while i <= 12 do 
begin
if massiv[i] <= 36 then windowsits[a] := massiv[i] else wallsits[k] := massiv[i];
if i = 12 then n := a;
if i = 12 then l := k;
if windowsits[a] = massiv[i] then a := a + 1;
if wallsits[k] = massiv[i] then k := k + 1; 
i := i + 1;
end;

i := 1;
a := 2;
k := 1;
r := n;

while windowsits[1] > 0 do
begin
if windowsits[a] div 4 = windowsits[1] div 4 then k := k + 1;
if windowsits[a] div 4 = windowsits[1] div 4 then windowsits[a] := windowsits[0];
if windowsits[a] = windowsits[0] then for o := a to n - 1 do windowsits[o + 1] := windowsits[o];
if windowsits[a] = windowsits[0] then r := r - 1;
if k = 4 then nomercupewindow[i] := windowsits[1] div 4;
if windowsits[a] = windowsits[0] then a := a else a := a + 1;
if a = r then windowsits[1] := windowsits[0];
if windowsits[1] = windowsits[0] then r := r - 1;
if windowsits[1] = windowsits[0] then a := 2;
if windowsits[1] = windowsits[0] then for o := 1 to r - 1 do windowsits[o + 1] := windowsits[o];
if k = 4 then i := i + 1;
end;

n := 1;
a := 2;
k := 1;
r := l;

while wallsits[1] > 0 do
begin;
if wallsits[a] div 2 = wallsits[1] div 2 then k := k + 1;
if wallsits[a] div 2 = wallsits[1] div 2 then wallsits[a] := wallsits[0];
if wallsits[a] = wallsits[0] then for o := a to n - 1 do wallsits[o + 1] := wallsits[o];
if wallsits[a] = wallsits[0] then r := r - 1;
if k = 2 then nomercupe[n] := wallsits[1] div 2;
if wallsits[a] = wallsits[0] then a := a else a := a + 1;
if a = r then wallsits[1] := wallsits[0];
if wallsits[1] = wallsits[0] then r := r - 1;
if wallsits[1] = wallsits[0] then a := 2;
if wallsits[1] = wallsits[0] then for o := 1 to r - 1 do wallsits[o + 1] := wallsits[o];
if k = 4 then n := n + 1;
end;

i := i - 1;
n := n - 1;
r := 1;
o := 1;
l := 1;

while o <= i do 
begin
if nomercupe[o] + nomercupewindow[r] = 18 then nomercupefree[l] := nomercupe[o];
if nomercupefree[l] = nomercupe[o] then l := l + 1;
if r > n then o := o + 1;
r := r + 1;
end;

l := l - 1;
n := 1;
o := 1;
k := 1;

while n <= l do
begin
if nomercupefree[n] - nomercupefree[o] = 1 then nomercupenomercupefreenext[k];
if nomercupefree[n] - nomercupefree[o] = 1 then k := k + 1;
if o >= l then n := n + 1;
o := o + 1;
end;
k := k - 1;
for o :=1 to k do  writeln (nomercupenomercupefreenext[o]); 
end.