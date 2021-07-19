% Dada a seguinte imagem, eliminar o ru�do produzido pelo ru�do peri�dico. Utilize a
% filtragem no dom�nio da frequ�ncia, primeiro calcule o espectro de Fourier 
% e elimine a regi�o ao redor dos �spikes�.

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

% 04 - Retornando no dom�nio espacial
nimg = ifft2(fimg);
imshow(abs(nimg), []);
