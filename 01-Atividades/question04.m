% 4. Dada a matriz
%    2 10  7 6
%    3 12 25 9

A = [2 10 7 6 ; 3 12 25 9]

%(a) Acrescente uma terceira linha a matriz com os elementos 30 21 19 1

linha = [30 21 19 1]

A = [A;linha]

%(b) Defina uma matriz B que contenha as três primeiras linhas da matriz A e as
% colunas de 2 a 4

B = A(1:3,2:4)
