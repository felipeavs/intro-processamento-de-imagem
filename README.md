# intro-processamento-de-imagem

Eficiente com operações com matrizes.

Linguagem interpretada. Podendo ser ligados  como C++, Java, SQL.

Tipos de dados

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/b2b4d4dd-e4ef-4cad-b618-72c2b70b6e23/Untitled.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/b2b4d4dd-e4ef-4cad-b618-72c2b70b6e23/Untitled.png)

Operações

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/1d5e732e-a7a9-48f5-acaa-a08bea3ff949/Untitled.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/1d5e732e-a7a9-48f5-acaa-a08bea3ff949/Untitled.png)

Em multiplicação temos a `.*` que é uma multiplicação ponto a ponto, multiplicando elementos correspondentes. Por exemplo, em uma matriz 2x2. Ao ser multiplicada ponto a ponto com uma outra matriz 2x2. A multiplicação será correspondente a cada posições correspondentes.

`2   3            .*            1    4                    =                     2     12`

`4   1                          2    1                                          8      1`

Ja a multiplicação comum irá multiplicar a linha pela coluna 

Vetores

```matlab
x = [1,2,3]      % Vetores
y = [1,2;1,3]    % Matriz
```

Capturar uma sub-Matriz

`sub_matrix = matrix(r1:r2, c1:c2)`, onde r1 e r2 especificam o inicio e fim de uma linha e o c1 e c2 especificam o inicio e fim de uma coluna para serem extraídas e construir uma nova matriz.

`col_two = matrix( : , 2)` , onde pega todos os elementos da segunda coluna. 

Colon Operator

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/84d5befe-766f-48a5-89ea-4697a29296d3/Untitled.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/84d5befe-766f-48a5-89ea-4697a29296d3/Untitled.png)

Operações em matrizes

```matlab
% Acessar um elemento na matriz
A(i,j)

% Acessar multiplos elementos da matriz
A(1,4) + A(2,4) + A(3,4) + A(4,4) -> sum(A(1:4, 4)) or sum(A(:,end))

% Deletando Linhas e colunas
X(:,2) = []

% Concatenando Matrizes
C = [A;B] % Colocando a Matriz A em Baixo da B. Detalhe que as matrizes 
					% tem que ter dimensoes correspondentes
```