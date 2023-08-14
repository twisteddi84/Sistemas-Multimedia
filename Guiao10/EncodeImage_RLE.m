function Stream = EncodeImage_RLE(Image)
count_coluna = 1;
count_linha = 1;
primeiro_elemento = Image(1,1);
primeiro = 1;
count_igual=1;

Stream = [];
for linha = 1:height(Image)
    for i=1:length(Image)
        if(primeiro==1)
            primeiro = 0;
        else
            if(primeiro_elemento==Image(linha,i))
                count_igual = count_igual + 1;
            else
                Stream(end+1) = primeiro_elemento;
                Stream(end+1) = count_igual;
                primeiro_elemento = Image(linha,i);
                count_igual = 1;
            end
        end

    end
    count_linha = count_linha + 1;
end
Stream(end+1) = primeiro_elemento;
Stream(end+1) = count_igual;
end