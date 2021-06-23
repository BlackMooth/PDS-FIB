clear all;
close all;

fs=1000;
f=100;
mida=0.1;
n=0:fs*mida;
y=sin(2*pi*n*f/fs);

[c,lags] = xcorr(y,'normalized');
stem(lags, c);

hold on;
stem(n,y)
legend('Autocorrelació','y(n)=sin(2pi·n·f/fs)'); grid;