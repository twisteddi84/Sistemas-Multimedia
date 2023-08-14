fa=1/Ta;
t = 0:Ta:length(x)/fa-Ta;
x_new = x(1:500);
t_new = t(1:500);
Amp = max(abs(x_new));
nBits = 4;
Delta = Amp/(2^nBits);
partition =(-1+2*Delta/2 : Delta : 1-Delta/2);
codebook = (-1+Delta/2 : Delta : 1-Delta/2);


[index,quantz] = quantiz(x_new,partition,codebook);
plot(t,quantz)