clear;
close all;

N=100; 
x1=sin (2*pi*0.1*(0:N-1));   % sequencia 1 per a la linealitat 
x2=sin (2*pi*0.3*(0:N-1));   % sequencia 2 per a la linealitat 
alfa=3; 
beta=0.5; 
x3=alfa*x1 + beta*x2;        % sequencia 3 combinacio lineal de les anteriors  
ret=5; x5=[zeros(1,ret)  x1(1:N-ret)];  % sequencia per a la invariancia temporal                                  
										% retardem la seq. original x1 en 5 mostres
y1(1)=x1(1);                     % calculem aquí els indexos problematics i  
y2(1)=x2(1);                     % les condicions inicials nules 
y3(1)=x3(1);  
y5(1)=x5(1); 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% LINEALITAT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
n=0:99;
figure(1);
subplot(3,1,1);
y1 = x1.^2 + 1;
y2 = x2.^2 + 1;
y3 = x3.^2 + 1;

stem(n,alfa*y1 + beta*y2); xlabel('n'); 
hold on;
stem(n,y3, '-*'); title('Sistema a');
legend('Tr(ax1+bx2)','aTr(x1)+bTr(x2)');

y1(1)=x1(1); y2(1)=x2(1); y3(1)=x3(1);
for i = 2:N-1
    y1(i) = ((i-1)/i)*y1(i-1)+(1/i)*x1(i);
    y2(i) = ((i-1)/i)*y2(i-1)+(1/i)*x2(i);
    y3(i) = ((i-1)/i)*y3(i-1)+(1/i)*x3(i);
end

subplot(3,1,2);
stem(n,alfa*y1 + beta*y2);
hold on;
stem(n,y3, '-*'); title('Sistema b');
legend('Tr(ax1+bx2)','aTr(x1)+bTr(x2)');

y1(1)=x1(1); y2(1)=x2(1); y3(1)=x3(1);
for i = 2:N-1
    y1(i) = 1.2*y1(i-1)+x1(i);
    y2(i) = 1.2*y2(i-1)+x2(i);
    y3(i) = 1.2*y3(i-1)+x3(i);
end

subplot(3,1,3);
stem(n,alfa*y1 + beta*y2);
hold on;
stem(n,y3, '-*'); title('Sistema c');
legend('Tr(ax1+bx2)','aTr(x1)+bTr(x2)');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% INV TEMPORAL %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(2);

y5 = x1.^2 + 1;
y6 = x5.^2 + 1;
subplot(3,1,1);
stem(n,y5);
hold on;
stem(n,y6, '-*'); title('Sistema a');
legend('Tr(x1(n))','Tr(x1(n-n0))');

y5(1)=x1(1); y6(1)=x5(1);
for i = 2:N-1
    y5(i) = ((i-1)/i)*y5(i-1)+(1/i)*x1(i);
    y6(i) = ((i-1)/i)*y6(i-1)+(1/i)*x5(i);
end

subplot(3,1,2);
stem(n,y5);
hold on;
stem(n,y6, '-*'); title('Sistema b');
legend('Tr(x1(n))','Tr(x1(n-n0))');

y5(1)=x1(1); y6(1)=x5(1);
for i = 2:N-1
    y5(i) = 1.2*y5(i-1)+x1(i);
    y6(i) = 1.2*y6(i-1)+x5(i);
end

subplot(3,1,3);
stem(n,y5);
hold on;
stem(n,y6, '-*'); title('Sistema a');
legend('Tr(x1(n))','Tr(x1(n-n0))');




