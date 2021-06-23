close all
clear all

X=[1 i -1 -i];
x=ifft(X,4)

X1 = fft(x,4)
max(X-X1)