clear variables;
clc;

w = randi(11,1,10)

%w<0
%nnz(w<0)
%w(w<0) =-w(w<0)
%w(mod(w,2)==1)=-w(mod(w,2)==1)
% i=1
% while i<=length(w)
%     if mod(w(i),2)==1
%         w(i)=[];
%     else
%         i=i+1;
%     end
% end
% disp(w);

%w(mod(w,2)==1)=[]

w(1:2:end)=-w(1:2:end)