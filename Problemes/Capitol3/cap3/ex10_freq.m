close all
clear all

n=1.5; % numero de periodes
limit=n*pi;
omega=-limit:0.001:limit;
h=sqrt(1./(1.25-cos(omega)));
f=atan(0.5*sin(omega)./(1-0.5*cos(omega)));
plot(omega,h),figure
plot(omega,f)