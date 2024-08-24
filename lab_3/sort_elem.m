function varargout=sort_elem(kierunek,varargin)

if nargout~=nargin-1
    error('Zla liczba');
end

ile=zeros(1,nargin-1);

for i=1:nargin-1
    ile(i)=numel(varargin{i});
end
if kierunek ==-1
[~,kolejnosc] = sort(ile,"descend");
else
[~,kolejnosc] = sort(ile);
end
varargout = varargin(kolejnosc);