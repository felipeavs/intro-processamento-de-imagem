function new_img = convert_to_gray(img_rgb)
  img_rgb = double(img_rgb);  
  
  R = img_rgb(:,:,1) * 0.299;
  G = img_rgb(:,:,2) * 0.587;
  B = img_rgb(:,:,3) * 0.114;
  L = R + G + B;
  
  gray_img = cat(3, L, L, L);
  new_img = uint8(gray_img);
