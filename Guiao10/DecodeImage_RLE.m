function Image = DecodeImage_RLE(N,M,Stream)
    Image = zeros(N,M);
    count_linha = 1;
    count_coluna = 1;

    for valor=1:2:length(Stream)
        quantidade = valor + 1;
        for i = 1:Stream(1,quantidade)
            Image(count_linha,count_coluna) = Stream(1,valor);
            count_coluna = count_coluna + 1;
            if(count_coluna>M)
                count_linha = count_linha + 1;
                count_coluna = 1;
            end
        end
        fprintf("%d index : %d valor\n",valor,Stream(1,valor))
    end
end

