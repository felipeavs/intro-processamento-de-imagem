function nimg = borderhighlight(img)  img = im2double(img);  [row col] = size(img);  nimg = zeros(row, col);  for i = 2 : row     for j = 2 : col       nimg(i,j) = img(i-1,j-1);     endfor
  endfor  nimg = abs(img .- nimg);
 