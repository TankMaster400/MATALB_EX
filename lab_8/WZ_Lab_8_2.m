clear variables;
clc;
close all;

L= 8192;
fs=8192;
t = (0:L-1)/fs;
y = 2*sin(2*pi*100*t)+ ...
      sin(2*pi*400*t)+ ...
      0.5*sin(2*pi*500*t);
plot(t(t<=0.05),y(t<=0.05));

n=2^nextpow2(L);
s=fft(y,n)/L;
f=(0:n/2 -1)/L*fs;
figure;
plot(f,abs(s(1:length(f))))