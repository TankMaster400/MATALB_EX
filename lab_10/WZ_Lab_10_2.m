clear variables;
close all;
clc;

f=@(x)x(1).^2 + x(2).^2;


[x_opt,y_opt,ef,output] = fminsearch(f,[5;5])

g=@(x)[2*x(1);...
    2*x(2)];
% opcje=optimset('GradObj','on');
opcje=optimset('TolX',1e-10);
[x_opt,y_opt,ef,output] = fminunc({f,g},[5;5],opcje)

