t = 0:0.01:5;
x = 2*sin(4*pi*t);
y = cos(10*pi*t);
z = x.*y;

plot(t,x,"r-");
title('Grafico x')
hold on

plot(t,y,"b--",LineWidth=2);
title('Grafico y')
hold on

plot(t,z,".g-")
title('Grafico z')
hold on


t = 0:0.01:10;
w = 3*sin(pi*t)+2*sin(6*pi*t);
plot (t,w,"y",LineWidth=2)
title('Grafico w')
hold off
