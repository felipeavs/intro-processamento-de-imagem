function mask = notch_filter(img, d0, n)
  [rows, cols] = size(img); 
  nimg = zeros(rows, cols);
  
  uo = rows/2 - 88;
  vo = cols/2 - 88;
  
  for i = 1: rows
    for j = 1 : cols
      d1 = sqrt(((i - (rows/2) - uo)**2) + ((j - (cols/2) - vo)**2));
      d2 = sqrt(((i - (rows/2) + uo)**2) + ((j - (cols/2) + vo)**2));
      h = 1/power((1+(d0**2)/(d1*d2)),n);
      nimg(i,j) = h;
    endfor
  endfor
  
  mask = nimg;

  
  