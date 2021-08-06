sk = [0 1 0; 1 1 1; 0 1 0];

img = imread('hand.png');
figure; imshow(double(img));
nimg = preenchimento(img, sk);
figure; imshow(double(nimg));