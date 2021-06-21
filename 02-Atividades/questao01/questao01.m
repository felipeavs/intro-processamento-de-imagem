% Converta uma imagem colorida para tons de cinza (luminância). Uma imagem em
% tons de cinza pode ser obtida a partir de uma imagem colorida aplicando-se a seguinte
% fórmula para cada um dos pixels da imagem original: L = 0.299 ? R + 0.587 ? G +
% 0.114 ? B, onde R, G e B são as componentes de cor do pixel original. Ao criar uma
% imagem a ser exibida em tons de cinza, para cada pixel pi, faça: Ri = Gi = Bi = Li;

% O seu programa deve permitir que a aplicação do cálculo de luminância um número
% arbitrário de vezes durante sua execução. Pergunta: o que acontecerá com uma
% imagem em tons de cinza (Ri = Gi = Bi = Li) caso o cálculo de luminância seja
% aplicado repetidas vezes (e.g., recursivamente) a imagem?

img = imread('../image/lennaRGB.tif');
nimg = convert_to_gray(img);
imshow(nimg)
