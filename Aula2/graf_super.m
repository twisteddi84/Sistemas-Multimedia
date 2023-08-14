x = linspace(-1,1,51);
y = linspace(-1,1,51);

[xx,yy]= meshgrid(x,y);

expo1 = -abs(xx+yy);
f = cos(4*pi*(xx+yy)).*exp(expo1);
surf(x,y,f),axis tight;
shading interp;