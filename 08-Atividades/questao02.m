
sk = [0 1 0; 1 1 1; 0 1 0];

img = imread('coins.png');
img = im2bw(double(img));
figure; imshow(double(img));
nimg = preenchimento(img, sk);
figure; imshow(double(nimg));
  
  