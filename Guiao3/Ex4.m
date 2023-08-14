Ta = 0.001;
f0 = 1;
T0 = 1;
Np = 4;
N = round(Np/(f0*Ta));
x = [N,1];
k = 14;
t = [0:(N-1)]'*Ta;

y=sawtooth(2*pi*f0*t+pi/2,1/2);
plot(t,y)

[ak,bk] = Calculo_coef(Ta,1/f0,y,k);
figure(62);
plot(0:k-1,ak,'*', 0:k-1,bk, '*')