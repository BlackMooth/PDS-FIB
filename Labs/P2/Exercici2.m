clear all;
close all;

fs=1200;
f=200;
mida=0.01;
n=0:fs*mida;
y=sin(2*pi*n*f/fs);
stem(n,y); 
xlabel('n'); ylabel('yd'); grid;