clear variables;
close all;
clc;

f=@(x)-x.*(20-2*x).*(10-2*x);

[x_opt,y_opt,ef,output] = fminbnd(f,0,5)

syms x
fs=-x.*(20-2*x).*(10-2*x);
p=sym2poly(fs)
roots(polyder(p))

x=0:0.05:10;
y=f(x);
plot(x,y)
