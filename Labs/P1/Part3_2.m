clear all;
close all;

%%%%%% x1(n) %%%%%%
u1 = repmat([-2 -1 0 1 2],1,5); 
n1 = -2:22; 
figure(1), stem(n1,u1,'filled'); xlabel('n'); ylabel('x1(n)'); grid;
clear all;

%%%%%% x2(n) %%%%%%
n=0:20;
u = @(n) +(n>=0)-(n>=20); 
f = @(n) (exp(0.1*n));
g = @(n) repmat(f(n).*u(n),1,3);
figure(2), stem(g(n),'filled'); xlabel('n'); ylabel('x2(n)'); grid;
clear all;

%%%%%% x3(n) %%%%%%
n=0:10;
u = @(n) +(n>=0)-(n>=10);
f = @(n) (sin(0.1*pi*n));
g = @(n) repmat(f(n).*u(n),1,4);
figure(3), stem(g(n),'filled'); xlabel('n'); ylabel('x3(n)'); grid;
clear all;

%%%%%% x4(n) %%%%%%
u1 = repmat([1 2 3],1,9); 
u2 = repmat([1 2 3 4],1,7);
for n1 = 1:25
u3(n1) = u1(n1)+u2(n1);    
end
n=0:24;
figure(4), stem(n,u3,'filled'); xlabel('n'); ylabel('x4(n)'); grid;