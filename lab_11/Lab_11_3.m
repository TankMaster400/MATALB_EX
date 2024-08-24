clear variables;
close all;
clc;

m=5;
b=0.5;
k=2;
F=1;

Y0=[0;0];
T=[0,100];

dY=@(t,Y)[Y(2);...
    (F-k*Y(1)-b*Y(2))/m];

opcje=odeset('events',@zdarzenie3);

[t,Y,te,Ye,ie]=ode45(dY,T,Y0,opcje);
plot(t,Y(:,1))

hold on;
plot(te(ie==1),Ye(ie==1 ,1),'x','MarkerSize',15)
plot(te(ie==2),Ye(ie==2 ,1),'o','MarkerSize',15)