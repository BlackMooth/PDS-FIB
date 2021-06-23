close all
clear all

N=64;
[x,n]=impseq(0,0,N-1);     % definicio de l'impuls delta(0)

X=fft(x,N);  % faltaria dividir per N

subplot(2,1,1); plot(n,abs(X));grid; axis([0,N,0,2])
xlabel('Coeficients k'); ylabel('a[k]')
title('Mòdul de la serie de Fourier, delta(0)')

subplot(2,1,2); plot(n,angle(X));grid; axis([0,N,-4,4])
xlabel('Coeficients k'); ylabel('Angle')
title('Fase de la serie de Fourier, delta(0)')

[x,n]=impseq((N/2)-1,0,N-1);     % definicio de l'impuls delta(N/2)
[x,n]=impseq(2,0,N-1);     % definicio de l'impuls delta(2)

X=fft(x,N);  % faltaria dividir per N
figure,
subplot(2,1,1); plot(n,abs(X));grid; axis([0,N,0,2])
xlabel('Coeficients k'); ylabel('a[k]')
title('Mòdul de la serie de Fourier, delta(1)')

subplot(2,1,2); plot(n,angle(X));grid; axis([0,N,-4,4])
xlabel('Coeficients k'); ylabel('Angle')
title('Fase de la serie de Fourier, delta(1)')

