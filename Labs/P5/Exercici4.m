clear all;
close all;

wc1=1/3;
wc2=2/3;
M = 45;
beta = 0.1102*(60-8.7); % paràmetre beta de la finestra Kaiser
[b] = para_banda_ideal(wc1,wc2,M);
b = b.*kaiser(M,beta)';
    
[db,mag,pha,grd,w]=freqz_m(b,[1]);
plot(w/pi,20*log10(mag));
xlabel('Freqüència normalitzada'); ylabel('Magnitud (dB)');
legend('Filtre amb finestra de Kaiser'); grid;

function hd = para_banda_ideal(wc1,wc2,M) 
% Calcul d’un filtre ideal
%----------------------------
% [hd] = para_banda_ideal(wc,M)
% hd = resposta impulsional ideal entre -M/2 i M/2
% wc = freqüència de tall en radians
% wcentral = freqüència central en radians
% M = longuitud del filtre ideal
halfRange = fix(M/2);
neg = -halfRange : 1 : -1;
hneg = ((1/pi)./neg).*(sin(pi*wc1.*neg) - sin(pi*wc2.*neg));
hzero = 1 + (wc1 - wc2);
nposi = 1 : 1 : halfRange;
hposi = ((1/pi)./nposi).*(sin(pi*wc1.*nposi) - sin(pi*wc2.*nposi));
hd = [hneg,hzero,hposi];
end

function [db,mag,pha,grd,w]=freqz_m(b,a);
%versio modificada de la rutina freqz
% ------------------------------------------
%  db = magnitud relativa en dB calculada entre 0 i pi radians
% mag = magnitud absoluta calculada entre 0 i pi radians
% pha = resposta de fase en radians entre 0 i pi radians
% grd = group delay sobre 0 i pi radians
%   w = 501 mostres de freqüència entre 0 i pi radians
%   b = polinomi numerador de H(z)     (per FIR: b=h)
%   a = polinomi denominador de H(z)   (per FIR: a=[1])
%
[H,w] = freqz(b,a,1000,'whole');
    H = (H(1:1:501))'; w = (w(1:1:501))';
  mag = abs(H);   db = 20*log10((mag+eps)/max(mag));
  pha = angle(H);  grd = grpdelay(b,a,w);
end
 
