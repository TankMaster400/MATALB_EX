clc;
clear variables;

n=1;
p=2;

x=input("Podaj ilosc\n");
suma=input("Podaj sume docelowa\n");
s = zeros(x,1);
tic;
for i = 2:x
    if s(i-1)<suma
        s(i)=s(i-1)+1/n;
        n=n+2;
    else 
        s(i)=s(i-1)-1/p;
        p=p+2;
    end
end
toc
plot(s)