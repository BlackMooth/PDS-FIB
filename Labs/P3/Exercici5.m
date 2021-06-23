clear all;
close all;

n = 0:100; 
x = cos(pi*n/2);
k = -100:100; omega = (pi/100)*k;
X = x * (exp(-j*pi/100)).^(n'*k);

y = exp(j*pi*n/4).*x; % senyal multiplied per x(n)
Y = y * (exp(-j*pi/100)).^(n'*k);

subplot(2,2,1); 
plot(omega/pi,abs(X)); grid;
xlabel('freqüència normalitzada'); title('Magnitud de X');

subplot(2,2,2); 
plot(omega/pi,angle(X)/pi); 
xlabel('freqüència normalitzada'); title('Fase de X'); grid;

subplot(2,2,3); 
plot(omega/pi,abs(Y)); 
xlabel('freqüència normalitzada'); title('Magnitud de Y'); grid;

subplot(2,2,4);  
plot(omega/pi,angle(Y)/pi);
xlabel('freqüència normalitzada'); title('Fase de Y'); grid; 