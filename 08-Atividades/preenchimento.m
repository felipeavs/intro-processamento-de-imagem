function nimg = preenchimento(img, elemEstruturante)
  [row, col] = size(img);
  x = zeros(row, col);
  x(394, 279) = 1;
  xnovo = zeros(row, col);
 
  while true
    xnovo = imdilate(x, elemEstruturante);
    xnovo = xnovo &(~img);
    if x_novo ~= x
      break
    endif
    x = x_novo;
  endwhile
  
  nimg = xk;
  
  
  
  
 