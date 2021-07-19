% 01 - Leitura da imagem a ser tratada
img = imread('lenna_periodico2.png');
imshow(img);

% 02 - Calculando a tranformada de Fourier.
fimg = fftshift(fft2(img));
imshow(log(abs(fimg)+1),[]);

% 03 - Calculando a máscara
mask = gaussian_filter(img, 30, 60, 3);
imshow(mask);

% 04 - Aplicando a máscara
nfimg = fimg .* mask;
imshow(log(abs(nfimg)+1),[]);


% 05 - Retornando no domínio espacial
nimg = ifft2(nfimg);
imshow(abs(nimg), []);
