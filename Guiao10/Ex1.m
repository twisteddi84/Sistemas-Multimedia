[Image,ColorMap] = imread("Parede_8bit.bmp");
figure(1);
image(Image);
colormap(ColorMap);
Save8bitImage('ficheiro_teste.txt',Image)

[N,M,Im]=Load8bitImage('ficheiro_teste.txt');
figure(2);

Image_encode = EncodeImage_RLE(Image);
Image_decode = DecodeImage_RLE(N,M,Image_encode);
image(Image_decode)
colormap(ColorMap)