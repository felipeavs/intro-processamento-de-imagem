function nimg = rotacao(img, ang)
  [lin, col, n] = size(img);
  nimg = zeros(lin, col, n);
  matT1 = [1 0 -lin/2 ; 0 1 -col/2 ;  0 0 1];
  matR = [sind(ang) -cosd(ang) 0; cosd(ang) sind(ang)  0 ; 0 0 1];
  matT2 = [1 0 lin/2 ; 0 1 col/2 ;  0 0 1];
  mat = matT2 * matR * matT1;
  
  for i = 1 : lin
    for j = 1 : col
       ncoord = mat * [i; j; 1];
       ni = floor(ncoord(1));
       nj = floor(ncoord(2));
       if  ni > 0 && ni <= lin && nj > 0 && nj <=col
         nimg(ni, nj) = img(i, j);
       endif
    endfor
  endfor
  nimg = uint8(nimg);