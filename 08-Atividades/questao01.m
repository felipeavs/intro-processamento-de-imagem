img = imread ('coins.png'); 
x = rand(size(double(img)));
d1 = find(x <= 0.05 );
d2 = find(x >= 0.95 );
img(d1) = 0;
img(d2) = 1;
figure;imshow(double(img))

sp = ones(3);
sk = [0 1 0; 1 1 1; 0 1 0];

%nimg = imdilate(img, sp);
%figure;imshow(double(nimg))
%nimg = imerode(nimg, sp);
%figure;imshow(double(nimg))

nimg = imdilate(img, sk);
figure;imshow(double(nimg))
nimg = imerode(nimg, sk);
figure;imshow(double(nimg))

