function nimg = mirror_vertical(img)
  img = double(img);
  [lin, col, n] = size(img);
  
  nimg = zeros(lin, col, n);
  nimg(:,1:col,:) = img(:,col:-1:1,:);
  
  nimg = uint8(nimg);
 