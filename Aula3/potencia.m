function [valor_potencia] = potencia(x,Ta,T)
    N = T/Ta;
    valor_potencia= x*x'/N;


