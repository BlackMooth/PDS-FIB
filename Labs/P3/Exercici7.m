clear all;
close all;

% H(z) = 0.0181+0.0543z^(-1)+0.0543z^(-2)+0.0181z^(-3)/1-1.76z^(-1)+1.1829z^(-2)-0.2781z^(-3)
b=[0.0181 0.0543 0.0543 0.0181];
a=[1 -1.76 1.1829 -0.2781];
figure(1), freqz(b,a);