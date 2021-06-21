function nimg = resize(img, scale)
  [lin, col, ~] = size(img);
  width = round(lin*scale);
  height = round(col*scale);
  nimg = zeros(width, height);
 
  for i = 1 : width
    for j = 1 : height
      nimg(i,j) = img(round(i/scale), round(j/scale));
    endfor
  endfor
  
  nimg = uint8(nimg);
  
