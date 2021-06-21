% 2 - Implementar as funções de transformação geométrica (rotação, escalamento, translação,
%     cisalhamento) em imagens.

img = imread('../image/lenna.png');
%imshow(img);

% Rotação
%nimg = rotacao(img, 45);
%imshow(nimg);

% Escalamento
%nimg = escala(img, 0.7, 0.5);
%imshow(nimg);


% Translação
%nimg = transladar(img, 20, 50);
%imshow(nimg);

% Cisalhamento
nimg = cisalhamento(img, 1);
imshow(nimg);