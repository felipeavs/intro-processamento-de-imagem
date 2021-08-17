
sk = [0 1 0; 1 1 1; 0 1 0];

img = imread('hand.png');
%figure; imshow(double(img));
nimg = img - (imerode(img, sk));
%figure; imshow(double(nimg));

img = imread('hand.png');
%figure; imshow(double(img));
nimg = (imdilate(img, sk)) - img;
%figure; imshow(double(nimg));

img = imread('hand.png');
figure; imshow(double(img));
nimg = (imdilate(img, sk)) - (imerode(img, sk));
figure; imshow(double(nimg));
