clear all;
close all;

%% Ona digital
fs1=1000;
fs2=1200;
f=200;
mida=0.01;
n=0:max(fs1,fs2)*mida;
y1=sin(2*pi*n*f/fs1);
y2=sin(2*pi*n*f/fs2);
yn=y1+y2; % superposició digital

%% Ona analògica
t=0:0.0001:0.01; % passos de 0.0001
yd = sin(2*pi*t*f) + sin(2*pi*t*f); % superposició analògica

subplot(2,1,1);
stem(n,yn);
xlabel('n'); ylabel('yd1(n) + yd2(n)'); title('Superposició digital'); grid;

subplot(2,1,2);
stem(t,yd);
xlabel('t'); ylabel('ya1(t) + ya2(t)'); title('Superposició analògica'); grid;