function [ak,bk] = Calculo_coef(Ta,T0,x,k)

N= round(T0 /Ta);
ak = zeros(k,1);
bk= zeros(k,1);
f = 1/T0;
k = [0:k-1]';

for i=1:N
    ak = ak + 2/N *(x(i) * cos(2*pi*k*f*i*Ta));
    bk = bk + 2/N *(x(i) * sin(2*pi*k*f*i*Ta));
end
end