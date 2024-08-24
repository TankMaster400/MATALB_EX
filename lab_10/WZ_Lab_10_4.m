clear variables;

clc;

a=[1;1];
x0 = 20*rand(2,1)-10;

A=[1,-1;...
    -1,-1];
b=[1;...
    1];

lb= [-3;-1]
ub = [3;inf]
[x_opt,y_opt]=fmincon(@(x)fitfun(x,a),x0,[],[],[],[],lb,ub, @nonlcon)