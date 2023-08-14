function [y_t_f,t_f]= tempo_frequencia(T_F,Ta,Fo,Np,Vamp,Vfreq,Vfas)
    y = 0;
    size = length(Vamp);

    if(T_F==1)
        periodo = 1/Fo;
        t_f = 0:Ta:Np*periodo;
        for k=1:size
            y = y + Vamp(k)*sin(2*pi*Vfreq(k)*t_f+Vfas(k));
        end
        y_t_f = y;
        
    elseif(T_F==2)
        periodo = 1/Fo;
        t_f = 0:Ta:Np*periodo;
        for k=1:size
            y = y + Vamp(k)*sin(2*pi*Vfreq(k)*t_f+Vfas(k));
        end

        N = length(y);
        Y = fft(y)/N;
        Y = fftshift(Y);
        fa=1/Ta;
        df = 1 / (N*Ta);
        F = (0:(N-1))*df-fa/2;
        y_t_f = abs(Y);
        t_f = F;
        
    else
        disp('T_F deverá ter valores 1 ou 2.')
        
    end


end