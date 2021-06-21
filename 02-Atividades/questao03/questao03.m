% Modificar a resolu��o de uma imagem, reduzindo � metade (n�o utilizar a fun��o
% imresize). Isto �, se o tamanho da imagem � de 512 � 512, a dimens�o da nova
% imagem ser� de 256 � 256. Logo, duplicar o tamanho da nova imagem, de forma tal,
% que ela tenha novamente 512 � 512 pixels.

img = imread('../image/lenna.png');
nimg = resize(img, 0.5);
nimg = resize(nimg, 2);
imshow(nimg);
