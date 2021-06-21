% Converta uma imagem colorida para tons de cinza (lumin�ncia). Uma imagem em
% tons de cinza pode ser obtida a partir de uma imagem colorida aplicando-se a seguinte
% f�rmula para cada um dos pixels da imagem original: L = 0.299 ? R + 0.587 ? G +
% 0.114 ? B, onde R, G e B s�o as componentes de cor do pixel original. Ao criar uma
% imagem a ser exibida em tons de cinza, para cada pixel pi, fa�a: Ri = Gi = Bi = Li;

% O seu programa deve permitir que a aplica��o do c�lculo de lumin�ncia um n�mero
% arbitr�rio de vezes durante sua execu��o. Pergunta: o que acontecer� com uma
% imagem em tons de cinza (Ri = Gi = Bi = Li) caso o c�lculo de lumin�ncia seja
% aplicado repetidas vezes (e.g., recursivamente) a imagem?

img = imread('../image/lennaRGB.tif');
nimg = convert_to_gray(img);
imshow(nimg)
