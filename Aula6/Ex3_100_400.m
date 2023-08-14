[X,F] = Espetro(x,1/fa);

Hf = zeros(1,length(X));
Hf(F>100 & F<400) = 1;
Hf(F>-400 & F<-100) = 1;

X_filtro = Hf.* X.';

plot(F,abs(X_filtro))
xlim([-4000,4000])

%[x1,Ta] = Espetro_inverso(X_filtro,F);
[y,t] = ReconstroiSinal(x,1/fa);

%sound(real(x1),fa)