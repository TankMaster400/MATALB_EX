clear variables;
clc;

N= 100000;
ile=0;
for i=1:N
    a1=2*pi*rand;
    a2=2*pi*rand;
    X1=[cos(a1),sin(a1)];
    X2=[cos(a2),sin(a2)];
    if norm(X1-X2)>sqrt(3)
        ile=ile+1;
    end
end

disp(ile/N)