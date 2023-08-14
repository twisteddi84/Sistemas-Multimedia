function [] = Save8bitImage (Filename,Image)

file = fopen(Filename,'w+');

[N,M] = size(Image);
N = uint16(N);
M = uint16(M);
fwrite(file,N,"uint16");
fwrite(file,M,"uint16");
fwrite(file,Image,"uint8");

fclose(file);
end