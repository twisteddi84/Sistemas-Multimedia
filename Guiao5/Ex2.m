%---a-----

Ta = 0.2;
t=0:Ta:5-Ta;
x = sin(2*pi*t);

[y,t]= ReconstroiSinal(x,Ta);

plot(t,y)

%-----b-----
Ta = 0.04;
t = 0:Ta:5-Ta;
x = sin(10*pi*t) + cos(12*pi*t) + cos(14*pi*t - pi/4);

[y1,t1] = ReconstroiSinal(x,Ta);
plot(t1,y1)

