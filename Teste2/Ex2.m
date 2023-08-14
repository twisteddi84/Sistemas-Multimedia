load("Guitar02.mat")
fa = 1/Ta;
fa_new = fa/2;
Ta_new = 1/fa_new;
sound(x,fa_new)
[X,F]=Espetro(x,Ta);
plot(F,abs(X))
title("Espetro das notas musicais")
xlabel("Frequência (Hz)")
ylabel("Amplitude")
xlim([-5e3,5e3])
