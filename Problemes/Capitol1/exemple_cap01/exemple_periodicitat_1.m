close all

% nombre de mostres per periode = parell


f=1000.0;
t=0:0.00001:0.004;    % T=0.001s  --> 4 periodes

% Primer plot  1 mostra/periode
fs=1000.0;
n=0:4;

y1=cos(2.0*pi*f*t);
y2=cos(2.0*pi*(f/fs)*n);

subplot(4,1,1)
plot(t,y1)
subplot(4,1,2)
stem(n,y2,'filled')
xlabel('n= 1 mostra')


% Segon plot    2 mostres/periode
fs=2000.0;
n=0:8;

y1=cos(2.0*pi*f*t);
y2=cos(2.0*pi*(f/fs)*n)

subplot(4,1,3)
plot(t,y1)
subplot(4,1,4)
stem(n,y2,'filled')
xlabel('n= 2 mostres')

% Tercer plot    4 mostres/periode
figure
fs=4000.0;
n=0:16;

y1=cos(2.0*pi*f*t);
y2=cos(2.0*pi*(f/fs)*n)

subplot(4,1,1)
plot(t,y1)
subplot(4,1,2)
stem(n,y2,'filled')
xlabel('n= 4 mostres')

% Quart plot   8 mostres/periode
fs=8000.0;
n=0:32;

y1=cos(2.0*pi*f*t);
y2=cos(2.0*pi*(f/fs)*n)

subplot(4,1,3)
plot(t,y1)
subplot(4,1,4)
stem(n,y2,'filled')
xlabel('n= 8 mostres')
axis([0 32 -1 1])

% nombre de mostres per periode = senar


% Primer plot  1 mostra/periode
figure
fs=1000.0;
n=0:4;

y1=cos(2.0*pi*f*t);
y2=cos(2.0*pi*(f/fs)*n)

subplot(4,1,1)
plot(t,y1)
subplot(4,1,2)
stem(n,y2,'filled')
xlabel('n= 1 mostra')


% Segon plot    3 mostres/periode
fs=3000.0;
n=0:12;

y1=cos(2.0*pi*f*t);
y2=cos(2.0*pi*(f/fs)*n)

subplot(4,1,3)
plot(t,y1)
subplot(4,1,4)
stem(n,y2,'filled')
xlabel('n= 3 mostres')

% Tercer plot    5 mostres/periode
figure
fs=5000.0;
n=0:20;

y1=cos(2.0*pi*f*t);
y2=cos(2.0*pi*(f/fs)*n)

subplot(4,1,1)
plot(t,y1)
subplot(4,1,2)
stem(n,y2,'filled')
xlabel('n= 5 mostres')

% Quart plot   7 mostres/periode
fs=7000.0;
n=0:7*4;

y1=cos(2.0*pi*f*t);
y2=cos(2.0*pi*(f/fs)*n)

subplot(4,1,3)
plot(t,y1)
subplot(4,1,4)
stem(n,y2,'filled')
xlabel('n= 7 mostres')
axis([0 28 -1 1])



