close all
clear all
clc

k = 12;  % llargada del senyal
t=0:0.0001:2*k/89;   
n=0:(k*54)-1;
% exercici

y1=2*sin(pi*100*t)+0.8*cos(pi*178*t);

fs= max([50 89])*27    % 27 es el nombre de mostres per periode de la 
                       % maxima frequencia (segons enunciat) 
y2=2*sin(2.0*pi*50*n/fs)+0.8*cos(2.0*pi*89*n/fs);

subplot(2,1,1)
plot(t,y1)
axis([0 max(t) -4 4])
subplot(2,1,2)
stem(n,y2,'filled')
xlabel('Senyal mostrejat')
axis([0 max(n) -4 4])

