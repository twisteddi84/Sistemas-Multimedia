load('Guitar01.mat')

Ta = 1/fa;
t = 0:Ta:length(x)/fa-Ta;
plot(t,x)
xlabel("Tempo (s)")
ylabel("Sinal")