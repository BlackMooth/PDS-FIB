clear all;
close all;

n = -1:3; 
x = [1 2 3 4 5]; 
k = -250:250; omega = (pi/250)*k;
X = x * (exp(-j*pi/250)) .^ (n'*k);

subplot(2,2,1); 
plot(omega/pi,real(X));
xlabel('freqüència normalitzada'); title('Real'); grid;

subplot(2,2,2);
plot(omega/pi,imag(X));
xlabel('freqüència normalitzada'); title('Img'); grid;

subplot(2,2,3); 
plot(omega/pi,abs(X));
xlabel('freqüència normalitzada'); title('Magnitud'); grid;

subplot(2,2,4); 
plot(omega/pi,angle(X)/pi);
xlabel('freqüència normalitzada'); title('Fase'); grid;