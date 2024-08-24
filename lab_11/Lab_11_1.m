clear variables;
close all;
clc;

a=0.98;
b=0.63;
g=9.81;
p=1;
D=50*1e-4;

V0= 10;
T =0:1000;

opcje=odeset('NonNegative',1);

dV = @(t,V)-a*b*D*sqrt(2*g*V/p);

%[t,V] =ode45(dV,T,V0);
[t,V] =ode23(dV,T,V0,opcje);
plot(t,V);