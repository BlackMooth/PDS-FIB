close all
clear all

% mirar inicialment impseq i stepseq

n0=0;            % inici de la sequencia
n1=-10;          % limit inferior
n2=10;           % limit superior

% IMPULS
% moure l'impuls  n0=7;
[x,n] = impseq(n0,n1,n2)
stem(n,x,'*')
pause

% GLAO

n0=0;
[x,n]= stepseq(n0,n1,n2);   % u(n-no)
figure,stem(n,x,'*')
pause

% RAMPA malament: fer r(n-2)
% provar tambe amb u(n) i fer r(n) amb n0=0
n0=2;
[x,n]= stepseq(0,n1,n2);   % u(n) n0=0
ramp = x.*(n-n0);           % rampa r(n-no)=(n-no)u(n-no)
stem(n,x)
hold on 
stem(n,ramp)
hold off
pause

% RAMPA bona: fer r(n-2)
n0=2;
[x,n]= stepseq(n0,n1,n2);   % u(n-no)
ramp = x.*(n-n0);           % rampa r(n-no)=(n-no)u(n-no)
figure,stem(n,x)
hold on 
stem(n,ramp)
hold off

% prova amb n0=0 --> u(n)  i ramp = x.*(n-2)
