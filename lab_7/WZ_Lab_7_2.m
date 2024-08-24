clear variables;
close all;
clc;

x=-1:0.1:1;
y=0:0.1:1;

[X,Y]=meshgrid(x,y);

Z=X.^2+Y.^4;
surf(x,y,Z);

fc=@(x,y)x.^2+y.^4;
integral2(fc,-1,1,0,1)

trapz(y,trapz(x,Z,2))

syms x y 

fc= x.^2+y.^4
int(int(fc,x,-1,1),y,0,1)