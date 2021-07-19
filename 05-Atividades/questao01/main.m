% Dada a seguinte imagem, eliminar o ruído produzido pelo ruído periódico. Utilize a
% filtragem no domínio da frequência, primeiro calcule o espectro de Fourier 
% e elimine a região ao redor dos “spikes”.

% 01 - Leitura da imagem a ser tratada
img = imread('lenna_periodico2.png');
%imshow(img);

% 02 - Calculando a tranformada de Fourier.
fimg = fftshift(fft2(img));
%imshow(log(abs(fimg)+1), []);

% 03 - Removendo os spikes
aux = 10;
fimg(88-aux:88+aux, 88-aux:88+aux) = 0;
fimg(169-aux:169+aux, 169-aux:169+aux) = 0;
%imshow(log(abs(fimg)+1), []);

% 04 - Retornando no domínio espacial
nimg = ifft2(fimg);
imshow(abs(nimg), []);
