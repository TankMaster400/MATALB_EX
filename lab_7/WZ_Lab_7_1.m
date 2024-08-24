clear variables;
close all;
clc;

x= -1:0.01:1;
p = randn(1,11);
y=polyval(p,x);
plot(x,y,'LineWidth',2)

e= zeros(1,11);
c_trapz= zeros(1,11);
c_integral= zeros(1,11);
for i=0:10

    pa=polyfit(x,y,i);
    ya=polyval(pa,x);
    % hold on
    % plot(x,ya,'r','LineWidth',2)
    % e= ya-y;
    % figure
    % plot(x,e)
    e(i+1) =mean(abs(ya-y))


    fc=@(x)sqrt(1+(polyval(polyder(pa),x)).^2);

    c_trapz(i+1)=trapz(x,fc(x))
    c_integral(i+1)= integral(fc,-1,1)
end

figure
bar(0:10,e)
figure
bar(0:10,c_trapz)
figure
bar(0:10,c_integral)
% 
% fc=@(x)sqrt(1+(polyval(polyder(p),x)).^2);
% 
% c_trapz=trapz(x,fc(x))
% c_integral= integral(fc,-1,1)