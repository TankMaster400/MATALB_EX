clear varaibles;
clc;

N=10000;
SUC=zeros(1,N-1);
for K=1:N-1
    for i=1:100
        O=randperm(N);
        maxK=max(O(1:K));
        O(1:K)=[];
        if O(find(O>maxK,1))==N
           SUC(K)= SUC(K)+1;
        end
    end
end
bar(SUC);