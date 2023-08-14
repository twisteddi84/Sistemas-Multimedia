Ta = 0.001;
f0 = 1;
Np = 2;
T0 = 1/f0;

bk = zeros(6,1);

impares = 1:2:6;
bk(impares) = 4./(impares*pi);
bk = [0;bk];
ak = zeros(size(bk));

[x,t] = Serie_Fourier(Ta,f0,Np,ak,bk);

[ak2,bk2] = Calculo_coef(Ta,T0,x,6);
ak
ak2
bk
bk2
t1 = 0:Ta:Np;
y = square(2*pi*t1*1);
plot(t,x)
hold on
plot(t1,y)
