load('Guitar02.mat')
fa = 1/Ta;
%sound(x,fa)
t = 0:Ta:length(x)/fa-Ta;
plot(t,x)
xlabel("Tempo (s)")
ylabel("Sinal")

t=1:1:50;

x=sin(2*pi*t);
plot(t,x)

Amp = max(x)-min(x)