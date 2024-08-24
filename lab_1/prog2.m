%clc;
clear variables;
n =input("Podaj n\n");
%disp(n);

suma = 0;

for i=1:n
    suma = suma+(1/i^2);
end

pi = sqrt(suma*6);
disp(pi);