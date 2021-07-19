function mask = ideal_filter(img, w, d0)
  [rows, cols] = size(img);
  mask = zeros(rows, cols);
  
  for i = 1 : rows
    for j = 1 : cols
      d = sqrt((((i - rows/2))**2) + ((j - (cols/2))**2));
      v1 = d0 - (w/2);
      v2 = d0 + (w/2);
      
      if v1 > d || v2 < d
        mask(i,j) = 1;
      endif
    endfor
  endfor
   
   