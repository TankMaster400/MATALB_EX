clear variables;

clc;

a=[1;1];
x0 = 20*rand(2,1)-10;

lb= [-inf;0]
ub = [2;1]
[x_opt,y_opt]=fmincon(@(x)fitfun(x,a),x0,[],[],[],[],lb,ub, @nonlcon1)