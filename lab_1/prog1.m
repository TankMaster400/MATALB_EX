clear variables;
clc;

n = input('Podaj liczbe\n');
disp(n);

for i=2:n
    if mod(n,i)==0
        break;
    end
end
if i==n
    disp("Jest pierwsza!");
else 
    disp("Nie jest pierwsza :(");
end