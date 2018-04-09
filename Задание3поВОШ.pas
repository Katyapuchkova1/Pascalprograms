program Zadaniye3;

var n, m, l, h, s, i: integer;{l - длина прямоугольника, вырезающегося, n - длина тетр листа, m - ширина тетр листа, h - ширина прямоугольника}

begin 

writeln ('Введите два числа');
readln (n, m);
s := 0;
l := 1;
h := 1;

while l + h <= n + m do
begin
i := (n - (l - 1))*(m -(h - 1));
if (l = n) and (h = m) then i := 1;
s := s + i;
if (l <> n) and (h <> m) and (h = m) then h := 1;
if (l <> n) and (h <> m) and (h < m) then h := h + 1;
if h = 1 then l := l + 1;
if (l = n) and (h = m) then h := m + 1;
end;

writeln (s); 

end.
