N = 3;
f1 = 10;
f2 = 20;
f3 = 30;

t = 0:1e-3:2*0.1;

fase = rand(1,3)*2*pi-pi;

x = sin(2*pi*f1*t+fase(1)) + sin(2*pi*f2*t+fase(2)) + sin(2*pi*f3*t+fase(3));

plot(t,x)