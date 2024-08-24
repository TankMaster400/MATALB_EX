clear variables;
clc;

M=randi(100,5) %#ok<*NOTPS>
%mean(mean(M))
%mean(M)
%mean(M(:))
% nnz(M>mean(M(:)))
% nnz(abs(M-mean(M(:)))<1)
% M-mean(M(:))
% [~,indx]=sort(M(:,1))
% M=M(indx,:)
% 
 s=sum(M,2)
% [~,indx]=sort(s)
% M=M(indx,:)

%M=M(randperm(5),:)