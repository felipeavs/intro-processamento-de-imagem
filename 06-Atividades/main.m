% Questão 1 2 3 4
escalas = [0.5 0.75 1 1.25 1.5 1.75 2];
ruidos = [0 0.01 0.02 0.03 0.04];

elem = 1;
for i = 1 : 10
  %Carregando a imagem
  path = strcat('numbers/num' ,strcat(int2str(i-1), '.jpg'));
  img = imread(path);
  
  for j = 1 : 20
    %Aplicando rotação 20 vezes
    img_rotacao = imrotate(img, ((j-1)*18));
    
    for k = 1 : (size(escalas)(2))
      %Aplicando escala 7 vezes
      img_escala = imresize(img_rotacao, escalas(k));
      
      for m = 1 : (size(ruidos)(2))
        %Aplicando ruído 5 vezes
        img_ruido = imnoise(img_escala, 'salt & pepper', ruidos(m));
        
        %Calculando  Hu
        vetor_h = humoments(img_ruido);
        
        %Adicionando em dados
        dados(elem,:) = vetor_h;
        %Adicionando em etiquetas
        etiqueta(elem,:) = i-1;
        elem = elem + 1;
      endfor
    endfor
  endfor
endfor  

% Questão 5
[train, test] = amostra(etiqueta, 0.75);

% Questão 6
train_data = dados(train, :);
train_label = etiqueta(train);

test_data = dados(test,:);
test_label = etiqueta(test);

model = train_sc(train_data, train_label);
pred = test_sc(model, test_data);

% Questão 7) Calcule a taxa de acerto para cada tipo de digito. Além disso, gere uma matriz de
% confusão. Veja o uso da função confusionmat()
predicao(:,1) = pred.classlabel(1:end, :);
c = confusionmat(test_label, predicao)


%Questão 8
nimg = imread('numeros2.jpg');
nimgs = BoundingBoxPatches(nimg);
etiqueta2 = [0; 1; 3; 5; 2; 7];

for i = 1 : size(nimgs)(1)
  nvetor_h(i,:) = humoments(nimgs{i});   
endfor

pred2 = test_sc(model, nvetor_h)
predicao2(:,1) = pred2.classlabel(1:end,:);
c2 = confusionmat(etiqueta2, predicao2)





