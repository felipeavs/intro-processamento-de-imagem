% Dado x = [1 2 3 4 5 6], escreva esse vetor em Matlab e entenda o significado dos 
% comandos abaixo:

x = [1 2 3 4 5 6]

x(5) % Retorna o quinto valor presente no vetor
x(2:5) % Retorna um sub-vetor contendo os valores partindo da coluna 2 at� coluna 5
x(1:end) % Retorna um sub-vetor que v� da prosi��o 1 at� a ultima do vetor
x(1:end-1) % Retorna um sub-vetor que v� da prosi��o 1 at� a penultima posi��o do vetor
x(6:-2:1) % Retorna um subvetor, iniciando na ultima posi��o, decrementando de 2 em 2 at� a primeira posi��o do vetor
x([1 5 2 1 1]) % Retorna um sub-vetor com os valores contidos nas sequintes posi��es [1 5 2 1 1]
