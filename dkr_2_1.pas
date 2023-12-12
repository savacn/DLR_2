program dkr_2_1;
const
  max = 100;
var
  arr: array[1..max] of Integer;
  n, i, j, min, dif, num1, num2: Integer;
begin
  WriteLn('Введите размер массива:');
  ReadLn(n);
  
  WriteLn('Введите элементы массива:');
  for i := 1 to n do
    ReadLn(arr[i]);
  
  min := Abs(arr[1] - arr[2]);
  num1 := arr[1];
  num2 := arr[2];
  
  for i := 1 to n-1 do
    for j := i+1 to n do
    begin
      dif := Abs(arr[i] - arr[j]);
      if dif < min then
      begin
        min := dif;
        num1 := arr[i];
        num2 := arr[j];
      end;
    end;
  
  writeLn('Два элемента с минимальной разностью по модулю:');
  writeLn(num1);
  writeLn(num2);
end.
