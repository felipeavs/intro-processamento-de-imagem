% Modificar a resolução de uma imagem, reduzindo à metade (não utilizar a função
% imresize). Isto é, se o tamanho da imagem é de 512 × 512, a dimensão da nova
% imagem será de 256 × 256. Logo, duplicar o tamanho da nova imagem, de forma tal,
% que ela tenha novamente 512 × 512 pixels.

img = imread('../image/lenna.png');
nimg = resize(img, 0.5);
nimg = resize(nimg, 2);
imshow(nimg);
