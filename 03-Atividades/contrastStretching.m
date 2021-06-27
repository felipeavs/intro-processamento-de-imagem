function nimg = contrastStretching(img, e, m)
  [row, col] = size(img);
  img = im2double(img);
  nimg = zeros(row, col);
  for i = 1 : row
    for j = 1 : col
      r = img(i,j);
      nimg(i,j) = 1/(1+((m./r).^e));
    endfor
  endfor
 
