clear variables;
close all;
clc;

fs=8192;
L=8192;
t=(0:L-1)/fs;
y=sin(2*pi*50*t)+sin(2*pi*150*t)+sin(2*pi*500*t)+sin(2*pi*600*t);
plot(t(t<0.015),y(t<=0.015));

n= 2^nextpow2(L);
s=fft(y,n)/L;
f = fs/2*linspace(0,1,n/2+1);
plot(f,2*abs(s(1:n/2+1)))

fh=f(2*abs(s(1:n/2+1))>0.1);
fo=(fh(1:end-1)+fh(2:end))/2;
[1,m] = butter(12,2*fo(1)/fs,'low');
y1 = filter(1,m,y);
figure
plot(t(t<0.5),y(t<=0.5));