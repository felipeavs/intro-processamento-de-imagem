
t = imread('coins.png');
t = rgb2gray(double(t));
[row,col] = size(t);
[x,y]= meshgrid(1:row,1:col);
t2 = t.*((x+y)/2+64)+x+y ;
t3 = uint8(255*mat2gray(t2));
t3 = t.*t3;
figure; imshow(t3); 

t3(1: 1 + row/3, 1:end) = global_threshold(t3(1: 1 + row/3, 1:end), 10);
t3(floor(row/3): floor(2*row/3), 1:end) = global_threshold(t3(floor(row/3): floor(2*row/3), 1:end), 8);
t3(floor(2*row/3)+1:end, 1:end) = global_threshold(t3(floor(2*row/3)+1:end, 1:end), 5);

figure; imshow(t3); 
