
function nimg = preenchimento(img, elemEstruturante)
  [row, col] = size(img);
  x = zeros(row, col);
  %x(394, 279) = 1; % para a imagem da mão
  x(49, 50) = 1; % para a imagem das bolinhas
  xnovo = zeros(row, col);
 
  while true
    xnovo = imdilate(x, elemEstruturante) & (~img);
    if ((xnovo == x) == (ones(row,col)))
      break
    endif
    x = xnovo;
  endwhile
 
  nimg = xnovo + img;
  
    
  
  
 