function mhist = myHist(img)
  [row, col] = size(img);
  mhist = zeros(1,256);
  for i = 1 : row
    for j = 1 : col
      mhist(img(i,j)+1) = mhist(img(i,j)+1)+1;
    endfor
  endfor
