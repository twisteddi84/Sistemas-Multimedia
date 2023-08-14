function [N,M,Im] = Load8bitImage(Filename)
file = fopen(Filename,'r');
N = fread(file,1,"uint16");
M = fread(file,1,"uint16");
Im = fread(file,[N,M],"uint8");

fclose(file);

end