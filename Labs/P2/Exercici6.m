clear all;
close all;

fs=1000;
f=50;
mida=0.1;
n=0:fs*mida;
y1=sin(2*pi*n*f/fs);
y2=sin(2*pi*n*f/fs+pi/2); % senyal desfasada 90º

figure(1);
% senyals y1 i y2
stem(n, y1);
hold on;
stem(n,y2);
hold off;
legend('y1(n)=sin(2pinf/fs)','y2(n)=sin(2pinf/fs + pi/2)'); grid;

% correlacio(y1, y2)
[c1,lags1] = xcorr(y1,y2);
figure(2);
stem(lags1,c1);
xlabel('lag'); ylabel('Corrlació creuada'); grid;

% autocorrelacio(y1)
[c2,lags2] = xcorr(y1,y1);
figure(3);
stem(lags2,c2);
xlabel('lag'); ylabel('Autocorrelació(y1)'); grid;

% autocorrelacio(y2)
[c3,lags3] = xcorr(y2,y2);
figure(4);
stem(lags3,c3);
xlabel('lag'); ylabel('Autocorrelacuó(y2)'); grid;
