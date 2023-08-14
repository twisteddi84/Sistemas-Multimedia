t = 0:1e-5:3*0.5;

p = sin(20*pi*t + 70*pi/180) + sin(20*pi*t+ 200*pi/180);

freq_angular = 20*pi

frequencia = freq_angular/(2*pi)

periodo = 1/frequencia


plot(t,p)