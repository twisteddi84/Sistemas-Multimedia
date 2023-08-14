function [x,Ta] = Espetro_inverso(X,F)
    N = length(X);
    x=ifft(ifftshift(X))*N;
    fa = F/((0:N-1)/N-1/2);
    Ta = 1/fa;
end