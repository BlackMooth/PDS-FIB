close all
clear all

n=1:100;

b=[1];
a=[1 -0.8];

h=1/(1-0.8*exp(-i*0.05*pi));  % H(w=0.05pi)

x=cos(0.05*pi*n);  
y=x.*h;     

figure(1);
y=filter(b,a,x);
subplot(2,1,1); 
stem(n,x);
xlabel('n'); ylabel('x(n)'); title('Seqüència d''entrada'); grid;
subplot(2,1,2); stem(n,y);
xlabel('n'); ylabel('y(n)'); title('Seqüència de sortida'); grid;

figure(2);
subplot(2,1,1);
stem(n,abs(y));          
xlabel('n'); ylabel('|y(n)|'); title('Mòdul de la sortida'); grid;
subplot(2,1,2);
stem(n,angle(y));          
xlabel('n'); ylabel('ang(y(n))'); title('Fase de la sortida'); grid;