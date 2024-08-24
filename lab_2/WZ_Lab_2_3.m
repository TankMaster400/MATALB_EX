clear variables;
clc;

% A=[2,6;2,5.999999];
% b=[8;8.0000002];
% x=A^-1*b
% x=A\b

%cond(A)
%rcond(A)

A=[2,6;2,6];
b=[8;8]
e=0.1;
for i=1:20
    disp('-------------');
    disp(i);
    A(2,2)=6+e;
    b(2)=8+e;
    rcond(A)
    x=A\b
    x=A^-1*b
    e=e/10
end