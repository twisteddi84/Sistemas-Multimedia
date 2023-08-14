function [x,t] = Espetro_inverso(X,F)
    N = length(X);
    fa = 2*max(F);
    x=ifft(ifftshift(X))*N;
    Ta = 1/fa;
    t = (0:N-1)*Ta;
end