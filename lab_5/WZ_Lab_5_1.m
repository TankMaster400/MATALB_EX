clear variables;
close all;
clc;

w=input('Podaj współczynniki wielomianu ');
p=input('Podaj przedział ');

%x=p(1):0.01:p(2);
x=linspace(p(1),p(2),100);
y=polyval(w,x);

r = roots(w)
indx =[];
for i=1:length(r)
    if ~isreal(r(i))
        %r(i)=[];
        indx(end+1)=1; %#ok<SAGROW>
    end
end
r(indx) =[];

%h = plot(x,y,'LineWidth',3);

% plot(x(y<=0),y(y<=0),'g');
% hold on;
% plot(x(y>=0),y(y>=0),'b');
% hold on;

nodes=[p(1),unique(r)',p(2)];

for i=1:length(nodes)-1
    x=linspace(nodes(i),nodes(i+1),50);
    y=polyval(w,x);
    if y(25)>0
        plot(x,y,'b')
    else
         plot(x,y,'g')
    end 
    hold on;
end

hold on; 
if ~isempty(r)
plot(r,0,'rx','LineWidth',3,'MarkerSize',15);
end