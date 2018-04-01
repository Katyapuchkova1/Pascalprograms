program EmmaStone;

var M , Ost , S :integer;
var L , N:real;

begin

writeln ('Введите количество лопастей');
readln (M);

Ost := M mod 3;

if Ost = 1 then 
S := (M - 1 - (3 * 5));
if Ost = 2 then
S := (M - 2 - (3 * 2));

N := (M - S) / 4;
L := S / 3;

writeln ('Количество спиннеров с 4-рьмя лопастями равно ' , N);
writeln ('Количество спиннеров с 3-мя лопастями равно ' , L);

end.






