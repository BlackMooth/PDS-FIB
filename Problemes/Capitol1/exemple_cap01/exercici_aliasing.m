close all
clear all
% 


% aliasing
figure
t=0:0.00001:9/225;    % 9 periodes
n=0:20;
% exemple

f1=225;
f2=725;
fs=500;
y1=cos(2.0*pi*f1*t);
y2=3*cos(2.0*pi*f2*t);
y3=cos(2.0*pi*(f1/fs)*n)
y4=3*cos(2.0*pi*(f2/fs)*n)

subplot(2,1,1)
plot(t,y1,'r')
hold on
plot(t,y2)
subplot(2,1,2)
stem(n,y3,'filled');
hold on
stem(n,y4,'o');
xlabel('Aliasing f1 i f2')
hold off


