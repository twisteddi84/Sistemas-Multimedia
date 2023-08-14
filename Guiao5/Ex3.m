Ta = 0.01;
t = (0: Ta : 2-Ta)';
x = sin(2*pi*t);
Amp = 1;
nBits = 2;
Delta = Amp/(2^nBits);
partition =(-1+2*Delta/2 : Delta : 1-Delta/2);
codebook = (-1+Delta/2 : Delta : 1-Delta/2);


[index,quantz] = quantiz(x,partition,codebook);
%plot(t,quantz,t,x)

[y,t1] = ReconstroiSinal(quantz,Ta);
plot(t1,y)