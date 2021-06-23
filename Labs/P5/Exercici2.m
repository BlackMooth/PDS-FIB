clear all;
close all;

wc=0.225;
M=73;
[b] = pb_ideal(wc,M); 
b = b.*hamming(M)'; 

[db,mag,pha,grd,w]=freqz_m(b,[1]);
plot(w/pi,20*log10(mag));
xlabel('Freqüència normalitzada'); ylabel('Magnitud (dB)'); 
legend('Filtre amb finestra de Hamming'); grid;


% Important: la funció s'ha modificat per a què es calculi
% h[n] amb el sinc normalitzat entre (-M/2:M/2)
function hd = pb_ideal(wc,M) 
% Calcul d’un filtre ideal
%----------------------------
% [hd] = pb_ideal(wc,M)
% hd = resposta impulsional ideal entre -M/2 i M/2
% wc = freqüència de tall en radians
% M = longuitud del filtre ideal
hd = wc*sinc(wc*(fix(-M/2):fix(M/2)));
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
 
