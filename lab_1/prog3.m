clc;
clear variables;

n=input("podaj n\n");

suma = 0;
flaga = true;

for i = 1:2:n
    if flaga ==true;
        suma = suma+1/i;
        flaga = ~flaga;
    else 
        suma = suma-1/i;
        flaga = ~flaga;
    end
end
pi = suma*4;
disp(pi);

pi2 = 4*(sum(1./(1:4:n))-sum(1./(3:4:n)));
disp(pi2);