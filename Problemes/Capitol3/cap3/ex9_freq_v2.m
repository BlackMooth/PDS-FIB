close all
clear all
minim=1e-6;
N=64;
n=0:N-1;
%senyal= sin(2*pi*n/N);
%senyal= sin(2*pi*n/16)+cos(2*pi*n/8);
%senyal= sin(2*pi*n/64)+cos(2*pi*n/32)+0.1*sin(2*pi*n/4);
%senyal= sin(2*pi*n/64)+cos(2*pi*n/32)+0.1*sin(2*pi*n/4)+0.5*cos(2*pi*n/16);
%senyal=sin(2*pi*n/5);
senyal=impseq(1,1,N);   % funcio impuls delta

q=fft(senyal,N)/N;
ar=real(q);
ai=imag(q);
for k=1:N 
   if (abs(ar(k))<minim) ar(k)=0;end
   if (abs(ai(k))<minim) ai(k)=0;end
end
a=atan(ai./ar);  % resultat en [-pi/2...pi/2]

ang= angle(q);   % resultat en [-pi...pi]

subplot(2,2,1)
stem(ar)
xlabel('Real')
subplot(2,2,2)
stem(ai)
xlabel('Img')
subplot(2,2,3)
stem(abs(q))
xlabel('Spectrum')
subplot(2,2,4)
stem(a)
xlabel('Phase')
