function [result] = sin_func(N,x)
result = 0;
    for i = 1:N
        result = result + (x.^i/factorial(i))*sin((i*pi)/2);
    end
end