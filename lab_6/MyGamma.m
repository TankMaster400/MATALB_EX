function y=MyGamma(s)

n=1:10000;
y=1/s*prod(((1+1./n).^s)./(1+s./n)) ;