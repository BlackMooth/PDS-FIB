clear all;
close all;

n = 0:10; 
x = (0.9).^n;
k = -200:200; omega = (pi/100)*k; 
X = x *(exp(-j*pi/100)) .^ (n'*k);

subplot(2,1,1); 
plot(omega/pi,abs(X));
xlabel('freqüència normalitzada'); title('Magnitud'); grid;
axis([-2,2,0,8]);

subplot(2,1,2);
plot(omega/pi,angle(X)/pi);
xlabel('freqüència normalitzada'); title('Fase'); grid;
axis([-2,2,-0.5,0.5]);