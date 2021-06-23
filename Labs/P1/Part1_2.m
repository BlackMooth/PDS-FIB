clear all;
close all;

n=0:0.1:5*2*pi; y=sin(n);
subplot(2,1,1);
plot(n,y);
xlabel('n'); ylabel('y=sin(n)'); grid;
title('sin(n), entre a=0:0.1:5*2pi');

n=0:1.6:5*2*pi; y=sin(n);
subplot(2,1,2);
plot(n,y);
xlabel('n'); ylabel('y=sin(n)'); grid;
title('sin(n), entre a=0:1.6:5*2pi');