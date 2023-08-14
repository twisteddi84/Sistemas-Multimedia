N = 1e4;
Ta = 0.001;
[x,t]=GeraSinal(N,Ta);
figure(1)
plot(t,x)

[X,F] = Espetro(x,Ta);
figure(2)
plot(F,abs(X))
xlim([-25,25])

H = zeros(length(F),1);
H((F>0) & (F<2)) = 1;
H((F>-2) & (F<0)) = 1;
xf = H.*X;
[w,t] = Reconstroi_andre(xf,f);
w = real(w);

Hf = zeros(1,length(X));
Hf(F>0 & F<2) = 1;
Hf(F>-2 & F<0) = 1;

X_filtro =Hf.* X.';
figure(2)
plot(F,abs(X_filtro))
xlim([-25,25])

[x1,Ta] = Espetro_inverso(X_filtro,F);


