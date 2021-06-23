clear all
close all
N=64;

desequilibri=pi/200;  %pi/200, pi/500,pi/1000....
n=0:1:N-1;
k=1;     % k=1 freq mes lenta; prova k=2, 4, 8, 16,....
w=(2*pi*k/N)+desequilibri;  
x= exp(i*w*n);  % sequencia d'entrada complexa
%x= real(x);


X=fft(x,N)/N;
stem(n,x),figure           % entrada
stem(n,abs(X)),figure      % modul coeficients series Fourier
stem(n,real(X))            % coeficients reals

x_nou=ifft(X,N)*N;
%x_nou=[x_nou x_nou];
figure, stem(1:1:N,x_nou)  % anti tranformada = sequencia d'entrada
