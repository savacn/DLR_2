program dkr_2_2;

var
  source, sub: string;
  i, j: integer;
  iss: boolean;

begin
  writeln('Введите исходную строку: ');
  readln(source);
  
  writeln('Введите подстроку: ');
  readln(sub);
  
  i := 1;
  j := 1;
  iss := false;
  
  while (i <= length(source)) and (j <= length(sub)) do
  begin
    if source[i] = sub[j] then
    begin
      j := j + 1;
      if j > length(sub) then
        iss := true;
    end;
    i := i + 1;
  end;
  
  if iss then
    writeln('Подстрока является подпоследовательностью исходной строки')
  else
    writeln('Подстрока не является подпоследовательностью исходной строки');
end.
