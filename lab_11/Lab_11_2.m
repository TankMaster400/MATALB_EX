clear variables;
close all;
clc;

a=1;
b=0.03;
c=0.01;
d=0.4;

T =[0,20];
Y0 =[15;15];

dY= @(t,Y) [(a-b*Y(2))*Y(1);...
    (c*Y(1)-d)*Y(2)];

opcje=odeset('events',@zdarzenie2);
[t,Y,te,Ye]=ode45(dY,T,Y0,opcje);
plot(t,Y);