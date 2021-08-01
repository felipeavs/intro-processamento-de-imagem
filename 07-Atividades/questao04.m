
  img = imread('lenna.png');
  figure; imshow(img);
  t = graythresh(img);
  bw = im2bw(img,t);
  figure; imshow(bw);
  
  