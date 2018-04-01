program EmmaStone;

var A , B , C:integer;
var N:real;

begin

writeln ('Введите три числа');

readln (A , B , C);

if A <= C then

N := (C - A) / B else

writeln ('Ошибка');

writeln ('Максимальное значение лопастей ' , N);

end.
 