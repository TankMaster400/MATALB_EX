clear variables;
close all;
clc;

fs=128;
L=128;
t=(0:L-1)/fs;
y= zeros(size(t));
y(t>=0.4 & t<=0.6)=1;
%y = sin(2*pi*2*t);
plot(t,y);

n= 2^nextpow2(L);
s=fft(y,n)/L

f=(-n/2:n/2-1)/n*fs;
s=fftshift(s);
figure;
plot(f, abs(s));
y1=zeros(size(t));
for i=1:length(s)
    y1=y1+real(s(i))*cos(2*pi*f(i)*t) - imag(s(i))*sin(2*pi*f(i)*t);
end
figure;
plot(t,y1)