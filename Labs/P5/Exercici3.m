clear all;
close all;

wcentral=0.50; % frequencia central: (wcf1+wcf2)/2
wc=0.225; % (wc2-wc1)/2
M=81;
[b] = passa_banda_ideal(wc,wcentral,M); 
b = b.*blackman(M)'; 

[db,mag,pha,grd,w]=freqz_m(b,[1]);
plot(w/pi,20*log10(mag));
xlabel('Freqüència normalitzada'); ylabel('Magnitud (dB)');
legend('Filtre amb finestra de Blackman'); grid;


function hd = passa_banda_ideal(wc,wcentral,M) 
% Calcul d’un filtre ideal
%----------------------------
% [hd] = passa_banda_ideal(wc,M)
% hd = resposta impulsional ideal entre -M/2 i M/2
% wc = freqüència de tall en radians
% wcentral = freqüència central en radians
% M = longuitud del filtre ideal
hd = wc*pi*sinc(wc*(fix(-M/2):fix(M/2)));
hd = hd.*(2*cos(pi*wcentral*(fix(-M/2):fix(M/2)))); % shifting, per la transf de Fourier
end

function [db,mag,pha,grd,w]=freqz_m(b,a);
%versio modificada de la rutina freqz
% ------------------------------------------
%  db = magnitud relativa en dB calculada entre 0 i pi radians
% mag = magnitud absoluta calculada entre 0 i pi radians
% pha = resposta de fase en radians entre 0 i pi radians
% grd = group delay sobre 0 i pi radians
%   w = 501 mostres de freqüènciancia entre 0 i pi radians
%   b = polinomi numerador de H(z)     (per FIR: b=h)
%   a = polinomi denominador de H(z)   (per FIR: a=[1])
%
[H,w] = freqz(b,a,1000,'whole');
    H = (H(1:1:501))'; w = (w(1:1:501))';
  mag = abs(H);   db = 20*log10((mag+eps)/max(mag));
  pha = angle(H);  grd = grpdelay(b,a,w);
end
 
