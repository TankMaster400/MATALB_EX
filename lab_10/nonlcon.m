function [c,ceq]= nonlcon(x)
    
if x(2)>=0
    c=min([x(1).^2 + x(2).^2 -1;...
    (x(1)-2).^2+x(2).^2-1;...
    (x(1)+2).^2+x(2).^2-1]);
    else
    c = [];
    end 

ceq = [];
end