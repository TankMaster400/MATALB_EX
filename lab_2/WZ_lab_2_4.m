clear variables;
clc;

N=100000;
in=0;
tic;
for i=1:N
    X=2*rand(1,2)-1;
    if sqrt(X(1)^2+X(2)^2)<1
        in = in+1;
    end
end
P=4*in/N;
toc;
disp(P);
tic
X=2*rand(N,2)-1;
in = nnz(sqrt(X(:,1).^2+X(:,2).^2)<1);
P=4*in/N;
toc
disp(P);