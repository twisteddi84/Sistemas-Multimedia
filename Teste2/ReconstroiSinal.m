function [y,t] = ReconstroiSinal(x,Ta)
    N = length(x);
    fa = 1 / Ta;
    fs = 100 * fa;
    t = (0:N*100-1)*1/fs;
    y = zeros(1, 100*N);
    for n = 1:N
        y = y + x(n)*sinc(fa*(t-(n-1)*Ta));
    end
end