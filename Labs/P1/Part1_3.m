clear all;
close all;

fs=8000;
f=500;
mida=0.01;    % en segons
n=0:fs*mida;
y=sin(n*2*pi*f/fs);
subplot(2,1,1);
plot(n,y);
xlabel('n'); ylabel('y=sin(2·pi·n·f/fs)'); grid;

t=0:1/fs:mida;
y2=sin(t*2*pi*f);
subplot(2,1,2);
plot(t,y2);
xlabel('t'); ylabel('y=sin(2·pi·t·f)'); grid;