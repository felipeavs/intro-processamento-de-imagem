function nimg = cisalhamento(img, shear)
 
  [lin, col, ~] = size(img); 
  nimg = zeros(lin, col); 
  matT1 = [1 0 -lin/2 ; 0 1 -col/2 ;  0 0 1]; 
  matR = [1 shear 0; 0 1 0 ; 0 0 1]; % <-
  matT2 = [1 0 lin/2 ; 0 1 col/2 ;  0 0 1]; 
  mat = matT2 * matR * matT1;
  
  for i = 1 : lin
    for j = 1 : col
       ncoord = mat * [i; j; 1];
       ni = floor(ncoord(1));
       nj = floor(ncoord(2));
       if  ni > 0 && ni <= lin && nj > 0 && nj <=col
         nimg(ni, nj) = uint8(img(i, j));
       endif
    endfor
  endfor
  nimg = uint8(nimg);