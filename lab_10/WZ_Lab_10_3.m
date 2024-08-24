clear variables;

clc;

a=[-1;-1];
x0 = 20*rand(2,1)-10;

[x_opt,y_opt]=fminsearch(@(x)fitfun(x,a),x0);

A=[1,1;...
    -1,1];
b=[1;...
    1];
Aeg=[1,1];
beg=1;
lb =[-1,-inf];
ub = [1,inf];

[x_opt,y_opt]=fmincon(@(x)fitfun(x,a),x0,A,b,Aeg,beg, lb,ub)