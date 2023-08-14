T_F=1;
Ta = 0.01;
Fo = 1/2;
Np = 3;
Vfreq = [3/2, 7/2, 9/2];
Vamp = [20,16,10];
Vfase = [-2*pi/3,2*pi/3,pi*4];

[y_t_f,t_f] = tempo_frequencia(T_F,Ta,Fo,Np,Vamp,Vfreq,Vfase);
subplot(2,1,1)
plot(t_f,y_t_f,'r')
legend('Sinal/tempo')
xlabel('Tempo(segundos)')
ylabel('Sinal')
grid
T_F = 2;
[y_t_f,t_f] = tempo_frequencia(T_F,Ta,Fo,Np,Vamp,Vfreq,Vfase);
subplot(2,1,2)
plot(t_f,y_t_f)
legend('Frequencia/Amp')
xlabel('Frequencia(Hertz)')
ylabel('Amplitude')
grid