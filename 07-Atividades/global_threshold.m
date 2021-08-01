function nimg = global_threshold(img, filter)
  [row, col] = size(img);
  mean_t = filter;
  last_mean_t = 0;
  nimg = zeros(row, col);
  while mean_t > last_mean_t
    g1 = 0;
    size_g1 = 0;
    g2 = 0;
    size_g2 = 0;
    for i = 1 : row
      for j = 1 : col
        if img(i,j) <= mean_t
          g2 += img(i,j);
          size_g2 += 1;
        else
          g1 += img(i,j);
          size_g1 += 1;
          nimg(i,j) = 255;
        endif
      endfor
    endfor
    
    micro_1 = g1/size_g1;
    micro_2 = g2/size_g2;
    
    last_mean_t = mean_t;
    mean_t = (micro_1 + micro_2)/2;
    
  endwhile
