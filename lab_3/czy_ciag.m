
function [czy,r_i]=czy_ciag(x)
% czy jest ciagiem

czy='';
if nargout==2
    r_i=[];
end
dx=x(2:end)-x(1:end-1);
if all(dx(1)==dx)
    czy(end+1)='A';
    if nargout==2
        r_i=dx(1);
    end
    %return;
end
dx=x(2:end)./x(1:end-1);
if all(dx(1)==dx)
    czy(end+1)='G';
    if nargout==2
        r_i=dx(1);
    end
    %return;
end
if isempty(czy)
czy='Z';
if nargout==2
    r_i=NaN
end
end

