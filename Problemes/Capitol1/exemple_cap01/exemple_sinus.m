clear all
close all

%f= 50Hz  T = 1/50 = 0,02s    si t= 0.1s llavors 5 periodes

t=0:0.001:0.1;             
x=sin(2*pi*50*t);
plot(t,x)                 % dibuix del sinus en blau
y=sin(2*pi*50*t+pi/6);    % Pi/6 = 30º a t=0 --> sin(30)=1/2
hold on
plot(t,y,'g')             % dibuix del sinus avançat Pi/6 = 30º sin(30)=1/2
hold off
y=sin(2*pi*50*t-pi/2); 
hold on
plot(t,y,'r')             % dibuix del sinus avançat Pi/2 = cos
hold off