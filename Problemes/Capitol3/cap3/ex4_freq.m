
close all
clear all
n=1:100;

b=[1];
a=[1 -0.8];
%impz(b,a,40)

h=1/(1-0.8*exp(-i*0.05*pi));  % H(w=0.05pi)

x=cos(0.05*pi*n);  % fd= 1/40
y=x.*h;          % calcul de la sortida 

y_mag = abs(y)
y_ang = angle(y)
figure, 
subplot(3,1,1)
stem(n,x)              % sequencia d'entrada
subplot(3,1,2)
stem(n,y_mag)          % modul de la sortida
subplot(3,1,3)
stem(n,y_ang)          % fase de la sortida

figure
y=filter(b,a,x);
subplot(2,1,1); stem(n,x);
xlabel('n');ylabel('x(n)');title('Seqüència d''entrada');
subplot(2,1,2); stem(n,y);
xlabel('n');ylabel('y(n)');title('Seqüència de sortida');
