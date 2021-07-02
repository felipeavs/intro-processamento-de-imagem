function nimg = change_background(img, mask)
  [rows, cols] = size(img);
  nimg = zeros(rows, cols, 3);
  inc = 60;
  for i = 1 : rows
    for j = 1 : cols
      for k = 1 : 3
        if (mask(i,j) == 1)
          nimg(i,j,k) = img(i,j);
        else
          if (k == 3)
            nimg(i,j,k) = (2*inc) + img(i,j);
          else
            nimg(i,j,k) = inc + img(i,j);
          endif
        endif         
      endfor
    endfor
  endfor
  nimg = uint8(nimg);
