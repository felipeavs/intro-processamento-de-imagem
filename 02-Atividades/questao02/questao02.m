% 2 - Implementar as fun��es de transforma��o geom�trica (rota��o, escalamento, transla��o,
%     cisalhamento) em imagens.

img = imread('../image/lenna.png');
%imshow(img);

% Rota��o
%nimg = rotacao(img, 45);
%imshow(nimg);

% Escalamento
%nimg = escala(img, 0.7, 0.5);
%imshow(nimg);


% Transla��o
%nimg = transladar(img, 20, 50);
%imshow(nimg);

% Cisalhamento
nimg = cisalhamento(img, 1);
imshow(nimg);