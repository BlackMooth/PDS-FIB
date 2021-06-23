%Exercici 2, Capitol 3 analisi frequencial

close all
clear all
limit=pi;   % prova amb un limit superior 2*pi, 4*pi
pas=0.01;
t=-limit:pas:limit;
H=1./sqrt(1.81-1.8.*cos(t));
fase=atan(0.9.*sin(t)./(1-0.9.*cos(t)));
plot(t,H),figure
plot(t,fase)
H(round(limit/pas)+1)  % H(0)
