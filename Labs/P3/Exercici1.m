close all;
clear all;

n = 0:250;
k = -250:250; omega = (pi/250)*k;
x = (0.5).^n;
X = x * (exp(-j*pi/250)) .^ (n'*k);
f=atan(0.5*sin(omega)./(1-0.5*cos(omega)));

subplot(2,2,1);
plot(omega/pi,real(X));
xlabel('freqüència normalitzada'); title('Real'); grid;

subplot(2,2,2);
plot(omega/pi,imag(X));
xlabel('freqüència normalitzada'); title('Img'); grid;

subplot(2,2,3);
plot(omega/pi, abs(X));
xlabel('freqüència normalitzada'); title('Magnitud'); grid;

subplot(2,2,4);
plot(omega/pi, angle(X));
xlabel('freqüència normalitzada'); title('Fase'); grid;