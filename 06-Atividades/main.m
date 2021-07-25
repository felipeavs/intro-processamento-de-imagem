% Questão 1 2 3 4

escalas = [0.5 0.75 1 1.25 1.5 1.75 2];
ruidos = [0 0.01 0.02 0.03 0.04];

elem = 1
vetor_h = [];
dados = zeros(7000,7);
etiqueta = [];

for i = 0 : 9
  %Carregando a imagem
  path = strcat('numbers/num' ,strcat(int2str(i), '.jpg'));
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
        abelha = elem
        %Adicionando em etiquetas
        etiqueta(elem) = i;
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
model = train_sc(train_data, train_label);

% Questão 7


%Questão 8


