clear variables;
close all;
clc;

%f=@(x)x.^2;
% f=@(x)1./(1-x);
% x=-3:0.01:3;
% y=f(x);

% plot(x,y)
% set(gca,'Ylim',[-10,10])

% x=0:0.1:6*pi;
% y= exp(1i*x);

% figure
% plot(x,y)
% figure 
% plot(x,imag(y))
% figure
% plot(x,abs(y))
% figure
% plot(x,angle(y))

% figure
% plot3(x,real(y),imag(y))
% xlabel('x')
% ylabel('real')
% zlabel('imag')
% axis equal
% view(-90,0)
% 
% p=[1,1,1];
% x=-2:0.05:2;
% y=polyval(p,x);
% plot(x,y)
% 
% r=roots(p)
% polyval(p,r)
% 
% a=-2:0.1:2;
% b=-2:0.1:2;
% 
% [A,B] = meshgrid(a,b);
% X=A+1i*B;
% 
% Y=polyval(p,X)
% 
% figure
% surf(a,b,abs(Y))
% xlabel('real')
% ylabel('imag')
% zlabel('|f(x)|')
% 
% figure
% surf(a,b,angle(Y))
% xlabel('real')
% ylabel('imag')
% zlabel('|f(x)|')
% 
% x=2+3i;
% %y=x.^2;
% y=x.^(1:0.1:10);
% plot(real(x),imag(x), 'b*')
% hold on
% plot(real(y),imag(y),'r*')
% 
% figure
% comet(real(y),imag(y))

% a=-1:0.1:1;
% b=-1:0.1:1;
% [A,B] = meshgrid(a,b);
% X=A+1i*B;
% 
% plot(real(X),imag(X),'b.');
% hold on
% axis([-15,15,-40,40]);
% n=1:0.1:10;
% 
% for i=1:length(n)
%     Y=X.^n(i);
%     plot(real(Y),imag(Y),'b.');
%     axis([-15,15,-40,40]);
%     pause(0.1);
% end

% a=-2:0.1:2;
% b=-2:0.1:2;
% [A,B] = meshgrid(a,b);
% X=A+1i*B;
% Y=X;
% P=angle(Y);
% imagesc(P);
% set(gca,'YDir', 'normal');
% colorbar
% 
% figure
% surf(a,b,abs(Y))
% xlabel('real')
% ylabel('imag')
% zlabel('|f(x)|')

% x=1:9;
% y=gamma(x);
% disp([x;y])

x=-5:0.005:5;
y=gamma(x);
plot(x,y);
set(gca,'Ylim',[-5,5])

a=-2:0.1:2;
b=-2:0.1:2;
[A,B] = meshgrid(a,b);
X=A+1i*B;

Y =zeros(length(b),length(a));
for i=1:numel(X)
    Y(i)=MyGamma(X(i));
end

figure
h=surf(a,b,abs(Y),angle(Y))
xlabel('real')
ylabel('imag')
zlabel('|f(x)|')
