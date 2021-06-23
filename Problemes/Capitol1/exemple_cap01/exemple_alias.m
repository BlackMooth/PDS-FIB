clear all
close all
clc
% exercici per demonstrar els alias d'un senyal 

fk=18000.0;
%fk=10000.0;
t=0:0.000001:0.001;    % T=0.0001s  --> 10 periodes

% Primer plot  
fs=16000.0;


k = 1;            % k = 0, +-1, +-2, ...
f0= fk - k*fs;   % calcul de la frequencia ben mostrejada
                 % IMPORTANT :  -fs/2 <= f0 <= fs/s
                 % per assegurar un bon mostreig (Nyquist)
              % f0 i fk son alias

                 % caldria calcular f0 dins el rang i llavors
                 % plotejar-lo juntament amb fk i el f0 fora del
                 % rang de mostreig correcte
fprintf('Freqüència de mostreig f_s  = %9.1fHz\n', fs);
fprintf('Freqüència alias       f_k  = %9.1fHz\n', fk);
fprintf('Freqüència (segons k)  f_0  = %9.1fHz\n',f0);
fprintf('Valor de k                  = %9d\n',k);

n=0:16;
y1=cos(2.0*pi*fk*t);         % senyal amb freq per sobre de Nyquist
y1d=cos(2.0*pi*(fk/fs)*n);

y2=cos(2.0*pi*f0*t);          % senyal amb freq per sota de Nyquist
y2d=cos(2.0*pi*(f0/fs)*n);


subplot(2,1,1)
plot(t,y1)
hold on
plot(t,y2)
subplot(2,1,2)
hold on
stem(n,y1d,'filled')
stem(n,y2d,'*')
axis([0 max(n) -1 1])


xlabel('senyals alias')


