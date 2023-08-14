Ta = 1/fa;
[X,F]=Espetro(x,Ta);
plot(F,abs(X))
xlim([-5e3,5e3])
ylim([0 4e-3])