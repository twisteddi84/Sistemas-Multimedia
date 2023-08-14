%-------a---------
Ta = 0.01;
np = 10;
T = 1;
N = round(T/Ta) * np;
t = (0:(N-1))*Ta;
x = sin(2*pi*t);

[X,F]=Espetro(x,Ta);
figure(1)
subplot(2,1,1)
plot(F,abs(X))
subplot(2,1,2)
plot(t,x)

%-------b---------
Ta = 0.01;
T = 1;
t = 0:Ta:50-Ta;
x = sin(10*pi*t)+cos(12*pi*t)+cos(14*pi*t-(pi/4));

[X,F]=Espetro(x,Ta);
figure(2)
subplot(2,1,1)
plot(F,abs(X))
subplot(2,1,2)
plot(t,x)

%--------c---------

Ta = 0.01;
np = 100;
T = 1/10;
N = round(T/Ta) * np;
t = (0:(N-1))*Ta;
x = 10 + 14*cos(20*pi*t-pi/3)+8*cos(40*pi*t+pi/2);

[X,F]=Espetro(x,Ta);
figure(3)
subplot(2,1,1)
plot(F,abs(X))
subplot(2,1,2)
plot(t,x)

%--------d-------
Ta = 0.01;
np = 100;
T = 1;
t=0:Ta:5-Ta;
x = square(2*pi*t);

[X,F]=Espetro(x,Ta);
figure(3)
subplot(2,1,1)
plot(F,abs(X))
subplot(2,1,2)
plot(t,x)

%--------e-------

Ta = 0.01;
np = 100;
T = 1;
t=0:Ta:5-Ta;
x = sawtooth(2*pi*t+pi/2,1/2);

[X,F]=Espetro(x,Ta);
figure(3)
subplot(2,1,1)
plot(F,abs(X))
subplot(2,1,2)
plot(t,x)
