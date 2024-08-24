classdef wielomian
    properties
        n;
        W;
    end
    methods
        function O=wielomian(n,W)
            if nargin==0
                O.n=0;
                O.W=[];
            elseif nargin==1
                if isa(n,'wielomian')
                    O=n;
                else
                    if numel(n)==1
                        O.n=n;
                        O.W=zeros(1,n);
                    else
                        O.n=length(n);
                        O.W=n;
                    end
                end
            else
                O.n=n;
                O.W=n;
            end
        end
        function disp(O)
            napis=[num2str(O.W(1)), '*x^', num2str(O.n-1)];
            for i=2:O.n
                napis = [napis, '+',num2str(O.W(i)), '*x^', num2str(O.n-i)];
            end
            disp(napis);
        end
        function C= plus(A,B)
            A.W = fliplr(A.W);
            B.W = fliplr(B.W);
            if A.n>B.n
                C=A;
                for i=1:B.n
                    C.W(i)=C.W(i)+B.W(i);
                end
            else
                C=B;
                for i=1:B.n
                    C.W(i)=C.W(i)+A.W(i);
                end
            end
            C.W=fliplr(C.W)
        end
        function P=pochodna(O)
            P=wielomian(O.n-1);
            O.W=fliplr(O.W);
            for i=1:P.n
                P.W(i)=O.W(i+1)*(i);
            end
            P.W=fliplr(P.W);
        end
    end
end