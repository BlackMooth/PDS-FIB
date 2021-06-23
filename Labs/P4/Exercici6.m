clear all;
close all;

% H(z) = 1/1-0.9z^(-1)
b = [1 0];
a = [1 -0.9];
figure(1), zplane(b,a); grid;
figure(2), freqz(b,a);
figure(3), impz(b,a); grid;