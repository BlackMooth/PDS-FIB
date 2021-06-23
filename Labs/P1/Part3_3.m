clear all;
close all;

x = [2 4 -3 1 -5 4 7];
N=7; n0=6; n = -10:10;

%%%%%% x1(n) %%%%%%
for k=-10:10
    index1 = mod(k+4, 7);
    if (index1 + n0) == N
        index1 = N;
    else
        index1 = mod(index1+n0,N);
    end
    
    index2 = mod(k+4, N);
    if (index2 + n0) == N
        index2 = N;
    else
        index2 = mod(index2+n0,N);
    end
    
    index3 = mod(k, N);
    if (index3 + n0) == N  
        index3 = N;
    else
        index3 = mod(index3+n0,N);
    end
    
    xn(k+11) = 2*x(index1) + 3*x(index2) - x(index3);
end

figure(1), stem(n,xn,'filled'); xlabel('n'); ylabel('x1(n)'); grid;

%%%%%% x2(n) %%%%%%
for k=-10:10
    index1 = mod(k+4, N);
    if (index1 + n0) == N
        index1 = N;
    else
        index1 = mod(index1+n0,N);
    end
    
    index2 = mod(k+5, N);
    if (index2 + n0) == N
        index2 = N;
    else
        index2 = mod(index2+n0,N);
    end
    
    index3 = mod(k, N);
    if (index3 + n0) == N  
        index3 = N;
    else
        index3 = mod(index3+n0,N);
    end
    
    xn(k+11) = 4*x(index1) + 5*x(index2) + 2*x(index3);
end

figure(2), stem(n,xn,'filled'); xlabel('n'); ylabel('x2(n)'); grid;

%%%%%% x3(n) %%%%%%
for k=-10:10
    m = n0 + mod(k,N);

    index1 = mod(k+3, N);
    if (index1 + n0) == N  
        index1 = N;
    else
        index1 = mod(index1+n0,N);
    end
    
    index2 = mod(k+5, 7);
    if (index2 + n0) == N
        index2 = N;
    else
        index2 = mod(index2+n0,N);
    end
    
    index4 = mod(k+1, N);
    if (index4 + n0) == N  
        index4 = N;
    else
        index4 = mod(index4+n0,N);
    end
    
    q = -k;
    index3 = mod(q+1, N);
    if (index3 + n0) == N  
        index3 = N;
    else
        index3 = mod(index3+n0,N);
    end
    
    xn(k+11) = x(index1)*x(index2)+x(index3)*x(index4);
end

figure(3), stem(n,xn,'filled'); xlabel('n'); ylabel('x3(n)'); grid;

%%%%%% x4(n) %%%%%%
for k=-10:10
    index1 = mod(k, N);
    if (index1 + n0) == N  
        index1 = N;
    else
        index1 = mod(index1+n0,N);
    end
    
    index2 = mod(k+2, N);
    if (index2 + n0) == N
        index2 = N;
    else
        index2 = mod(index2+n0,N);
    end
    
    xn(k+11) = 2*exp(0.5*k)*x(index1) + cos(0.1*pi*k)*x(index2);
end

figure(4), stem(n,xn,'filled'); xlabel('n'); ylabel('x4(n)'); grid;