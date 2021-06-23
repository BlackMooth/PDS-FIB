clear all;
close all;

wc = pi/2;
M = 10;
n = 0:M-1;
[hd] = pb_ideal(wc,M); % resposta passa-baixos ideal
stem(n,hd);
xlabel('n'); ylabel('h[n]'); grid;

function hd = pb_ideal(wc,M) 
% Calcul d’un filtre ideal
%----------------------------
% [hd] = pb_ideal(wc,M)
% hd = resposta impulsional ideal entre 0 i M-1
% wc = freqüència de tall en radians
% M = longuitud del filtre ideal
n = (0:M-1);
y = (sin(n*wc))./(n*wc);
y(n==0) = 1;
hd = (wc/pi).*y;
end
