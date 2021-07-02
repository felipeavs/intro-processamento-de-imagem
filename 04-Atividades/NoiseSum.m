function nimg = NoiseSum(img, n)
  [rows, cols] = size(img);
  matrix_nDim = zeros(rows, cols, n); % Matriz da imgem de n dimensões
  nimg = zeros(rows, cols);
  for i = 1 : n;
     matrix_nDim(:,:,i) = imnoise(img, 'gaussian');
  endfor
  matrix_nDim = sort(matrix_nDim, 3); % Ordena a matriz através das dimensões
  nimg = uint8(matrix_nDim(:,:,(floor(n/2)))); % Captura a mediana
  

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  