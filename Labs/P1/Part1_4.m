clear all;
close all;
fs = 8000;           % freqüència de mostreig
mida=3;              % 3 segons  
t=0:1/fs:mida;       % defineix el nombre de mostres basat en                        
                     % el temps  
%%%%%% Sinus amb f=500Hz %%%%%%
f=500;
y2=sin(t*2*pi*f);
filename1 = 'Part1_sin_500.wav';
audiowrite(filename1,y2,fs);

%%%%%% Sinus amb f=300Hz %%%%%%
f=300;
y2=sin(t*2*pi*f);
filename2 = 'Part1_sin_300.wav';
audiowrite(filename2,y2,fs);

%%%%%% Sinus amb f=1000Hz %%%%%%
f=1000;
y2=sin(t*2*pi*f);
filename3 = 'Part1_sin_1000.wav';
audiowrite(filename3,y2,fs);