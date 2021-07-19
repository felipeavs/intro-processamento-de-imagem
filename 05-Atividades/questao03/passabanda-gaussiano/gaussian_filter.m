function mask = gaussian_filter(img, w, d0, n)
  [rows, cols] = size(img);
  mask = zeros(rows, cols);
  
  for i = 1 : rows
    for j = 1 : cols
      d = sqrt((((i - rows/2))**2) + ((j - (cols/2))**2));
      h = 1 - power(e,-((((d**2) - (d0**2))/(d*w))**2));
      mask(i,j) = h;
    endfor
  endfor
   
   