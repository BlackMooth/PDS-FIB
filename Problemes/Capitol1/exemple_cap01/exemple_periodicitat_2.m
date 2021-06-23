close all

% nombre de mostres per periode = parell


f=1000.0;
t=0:0.00001:0.040;    % T=0.001s  --> 40 periodes


% Primer plot  1 mostra/periode
figure
fs=1000.0;
n=0:40;

y1=cos(2.0*pi*f*t);
y2=cos(2.0*pi*(f/fs)*n);

subplot(4,1,1)
plot(t,y1)
subplot(4,1,2)
stem(n,y2,'filled')
xlabel('n= 1 mostra')


% Segon plot    3.??? mostres/periode
fs=3240.0;
n=0:130;

y1=cos(2.0*pi*f*t);
y2=cos(2.0*pi*(f/fs)*n);

subplot(4,1,3)
plot(t,y1)
subplot(4,1,4)
stem(n,y2,'filled')
xlabel('n= 81 mostres')
axis([0 130 -1 1])

% Tercer plot    ?? mostres/periode
figure
t=0:0.00001:0.1;    % T=0.001s  --> 100 periodes

fs=1000*sqrt(3);  % 1732,1.....
n=0:173;

y1=cos(2.0*pi*f*t);
y2=cos(2.0*pi*(f/fs)*n);

subplot(4,1,1)
plot(t,y1)
subplot(4,1,2)
stem(n,y2,'filled')
xlabel('n= ?? mostres')
axis([0 173 -1 1])

% Quart plot   7 i escaig mostres/periode
t=0:0.00001:0.020;    % T=0.001s  --> 20 periodes
fs=7003.0;
n=0:140;

y1=cos(2.0*pi*f*t);
y2=cos(2.0*pi*(f/fs)*n);

subplot(4,1,3)
plot(t,y1)
subplot(4,1,4)
stem(n,y2,'filled')
xlabel('n= 7 mostres i escaig')

