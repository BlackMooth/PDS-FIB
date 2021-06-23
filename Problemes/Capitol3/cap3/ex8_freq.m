close all
clear all

n=3; % numero de periodes
limit=n*pi;
omega=-limit:0.001:limit;
h=sqrt(1/3*(3+2*(2.*cos(omega)+cos(2*omega))));
f=atan(-(sin(omega)+sin(2.*omega))./(1+cos(omega)+cos(2.*omega)));
plot(omega,h),figure
plot(omega,f)