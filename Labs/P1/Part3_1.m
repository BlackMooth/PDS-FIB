clear all;
close all;

%%%%%% x1(n) %%%%%%
n0 = -2;
n1 = 0;
n2 = 3;
n3 = 7;
n = -5:15;
xn = 3*((n-n0)==0)+2*((n-n1)==0)-((n-n2)==0)+5*((n-n3)==0); % funcions delta
figure(1), stem(n,xn, 'filled'); xlabel('n'); ylabel('x1(n)'); grid;
clear all;

%%%%%% x3(n) %%%%%%
n0 = 0;
n1 = 5;
n2 = 10;
n3 = 15;
n = -5:20;
xn = 10*((n-n0)>=0)-5*((n-n1)>=0)-10*((n-n2)>=0)+5*((n-n3)>=0); % funcion esglaó
figure(2), stem(n,xn, 'filled'); xlabel('n'); ylabel('x2(n)'); grid;
clear all;

%%%%%% x4(n) %%%%%%
n=-25:15;
u = @(n) +(n>=-20)-(n>=10);
f = @(n) (exp(0.1*n));
g = @(n) f(n).*u(n);
figure(3), stem(n,g(n)); xlabel('n'); ylabel('x4(n)'); grid; axis([-25 15 -1 3]);
clear all;

%%%%%% x5(n) %%%%%%
n = -200:200;
xn = 5*(cos(0.49*pi*n) + cos(0.51*pi*n));
figure(4), stem(n,xn); xlabel('n'); ylabel('x5'); grid;
clear all;

%%%%%% x6(n) %%%%%%
n = -200:200;
s = @(n) sin(0.01*pi*n);
c = @(n) cos(0.5*pi*n);
g = @(n) 2*s(n).*c(n);
figure(5), stem(n,g(n)); xlabel('n'); ylabel('x6'); grid;
clear all;

%%%%%% x8(n) %%%%%%
n = 0:100;
s = @(n) sin(0.1*pi*n);                           % Create A Function For -u(t)2
f = @(n) (exp(0.01*n));
g = @(n) s(n).*f(n);
figure(6), stem(n,g(n)); xlabel('n'); ylabel('x8'); grid;