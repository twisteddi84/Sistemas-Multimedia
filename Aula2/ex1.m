t = 0:0.01:5;
x = 2*sin(4*pi*t);
y = cos(10*pi*t);
z = x.*y;
subplot(2,3,1)
plot(t,x,"r");
title('Grafico x')


subplot(2,3,2)
plot(t,y,"g");

title('Grafico y')

subplot(2,3,3)
plot(t,z)
title('Grafico z')
subplot(2,3,4)
t = 0:0.01:10;
w = 3*sin(pi*t)+2*sin(6*pi*t);
plot (t,w)
title('Grafico w')
subplot(2,3,5)
t1 = 0:0.01:5;
t2 = 0:0.01:5;

[tt1,tt2] = meshgrid(t1,t2);

q = 2*sin(2*pi*(2*tt1+tt2));

mesh(t1,t2,q)
title('Grafico q')