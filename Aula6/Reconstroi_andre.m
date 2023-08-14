function [x,t] = Reconstroi_andre(X,f)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    N=length(X);
    Fa = max(f)*2;
    Ta=1/Fa; 
    t=(0:N-1)*Ta;
    x=ifft(ifftshift(X))*N;
    plot(t,x)
    legend('Sinal Reconstruido filtrado')

end