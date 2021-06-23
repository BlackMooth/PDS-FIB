clear all;
close all;

a=0:10;
b=sin(a);
subplot(2,1,1);
plot(a,b);
xlabel('a'); ylabel('y=sin(a)'); grid;
title('sin(a), entre a=0:10');

a=0:0.1:10;
b=sin(a);
subplot(2,1,2);
plot(a,b);
xlabel('a'); ylabel('y=sin(a)'); grid;
title('sin(a), entre a=0:1:0.1:10');