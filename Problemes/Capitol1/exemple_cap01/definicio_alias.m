clear all
close all

t=0:0.01:10;
n=0:18;                     
% exemple de aliasing 
% fs=1.0; n=0:10;    aqui es produeix aliasing
% fs=1.8;  n=0:18;    quins valors no produiran aliasing?

fs=1.8;
f1=0.1;
y1=cos(2*pi*f1*t);
y2=cos(2.0*pi*f1*n/fs); % si que cumpleix Nyquist  fs >> f

f2=0.9;
y3=cos(2*pi*f2*t);
y4=cos(2.0*pi*f2*n/fs); % SI cumpleix Nyquist  fs = 2*f 

subplot(2,1,1)
plot(t,y1)
hold on; plot(t,y3,'r');hold off
subplot(2,1,2)
stem(n,y2,'filled')
hold on; stem(n,y4); hold off
xlabel('1r Exercici')
