function [c,ceq]= nonlcon1(x)
    
if x(1)>=0
    c=-1;
elseif x(1)>=-1
    c = x(1)+x(2);
else
    c = -x(1)+x(2)-2;
end

ceq = [];
end