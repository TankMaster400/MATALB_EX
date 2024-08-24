clear variables;
close all;
clc;

x=-1:0.1:1;

y=polyval([1,0,0],x)+0.2*randn(size(x));

plot(x,y,'*','MarkerSize',15,'LineWidth',2)


xx=-1:0.01:1;

pa=polyfit(x,y,2);
ya=polyval(pa,xx);
hold on;
plot(xx,ya,'r','LineWidth',2)

sp=spline(x,y);
ysp=ppval(sp,xx);
hold on;
plot(xx,ysp,'m','LineWidth',2)

net=fitnet(5);
view(net)
net=train(net,x,y);
ynet= sim(net,xx);
hold on;
plot(xx,ynet,'g','LineWidth',2)

% y=fliplr(y);
% figure;
% plot(x,y,'*', 'MarkerSize',15,'LineWidth',2);
% pa=polyfit(x,y,2);
% ya=polyval(pa,xx);
% hold on;
% plot(xx,ya,'r','LineWidth',2)
