% 5 - Dada uma imagem, primeiro espelhar a imagem na vertical. Depois, a partir da
%     imagem espelhada, espelhar novamente a mesma, mas na horizontal. Não utilizar as
%     funções fliplr() e flipud(). Faça uso de vetores para acessar os índices.

img = imread('../image/lenna.png');
nimg = mirror_vertical(img);
nimg = mirror_horizontal(nimg);
imshow(nimg);

