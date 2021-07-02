function nimg = NoiseSum(img, n)
  [rows, cols] = size(img);
  matrix_nDim = zeros(rows, cols, n); % Matriz da imgem de n dimens�es
  nimg = zeros(rows, cols);
  for i = 1 : n;
     matrix_nDim(:,:,i) = imnoise(img, 'gaussian');
  endfor
  matrix_nDim = sort(matrix_nDim, 3); % Ordena a matriz atrav�s das dimens�es
  nimg = uint8(matrix_nDim(:,:,(floor(n/2)))); % Captura a mediana
  

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  