% 5 - Dada uma imagem, primeiro espelhar a imagem na vertical. Depois, a partir da
%     imagem espelhada, espelhar novamente a mesma, mas na horizontal. N�o utilizar as
%     fun��es fliplr() e flipud(). Fa�a uso de vetores para acessar os �ndices.

img = imread('../image/lenna.png');
nimg = mirror_vertical(img);
nimg = mirror_horizontal(nimg);
imshow(nimg);

