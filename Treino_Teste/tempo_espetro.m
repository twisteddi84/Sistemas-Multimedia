function [] = tempo_espetro(y,Ta,F0,Np,T_F)
    if(T_F==0)
        periodo = 1/F0;
        tempo = 0:Ta:Np*periodo;
        plot(tempo,y)
    end
    if(T_F == 1)
        N = length(y);
        X = fft(y)/N;
        X = fftshift(X);

        fa=1/Ta;
        df = 1 / (N*Ta);
        F = (0:(N-1))*df-fa/2;
        plot(F,abs(X))
    end
    if(T_F == 2)
        periodo = 1/F0;
        tempo = 0:Ta:Np*periodo;
        plot(tempo,y)

        N = length(y);
        X = fft(y)/N;
        X = fftshift(X);
        fa=1/Ta;
        df = 1 / (N*Ta);
        F = (0:(N-1))*df-fa/2;
        subplot(2,1,2)
        plot(F,abs(X))
end
