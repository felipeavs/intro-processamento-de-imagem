% 4 - Testar as funções rgb2gray(), rgb2ind(), im2double(), im2bw() e salvar as images com
%     imwrite()

img = imread('../image/lennaRGB.tif');

nimg_rgb2gray = rgb2gray(img);
nimg_rgb2ind = rgb2ind(img); 
nimg_im2double = im2double(img);
%nimg_im2bw = im2bw(img, 0.4);

imwrite(nimg_rgb2gray, 'nimg_rgb2gray.png')
imwrite(nimg_rgb2ind, 'nimg_rgb2ind.png')
imwrite(nimg_im2double, 'nimg_im2double.png')
%imwrite(nimg_im2bw, 'nimg_im2bw.png')

