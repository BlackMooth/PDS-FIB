clear all;
close all;

%%%%%% e^(0.1j·pi·n) %%%%%%
n=-100:100;
expo = exp(j*(pi/10)*n);
figure(1);
subplot(2,1,1);
stem(n,real(expo)); % Re
xlabel('n'); ylabel('Re(e^0.1j*pi*n)'); title('Real part'); grid;
subplot(2,1,2);
stem(n,imag(expo))
xlabel('n'); ylabel('Im(e^0.1j*pi*n)'); title('Imaginary part'); grid;

%%%%%% cos(0.1n) %%%%%%
n=-20:20;
cosine = cos(0.1*n);
figure(2);
stem(n,cosine);
xlabel('n'); ylabel('cos(0.1n)'); grid;