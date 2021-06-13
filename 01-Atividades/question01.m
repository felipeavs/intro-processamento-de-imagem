% Dado x = [1 2 3 4 5 6], escreva esse vetor em Matlab e entenda o significado dos 
% comandos abaixo:

x = [1 2 3 4 5 6]

x(5) % Retorna o quinto valor presente no vetor
x(2:5) % Retorna um sub-vetor contendo os valores partindo da coluna 2 até coluna 5
x(1:end) % Retorna um sub-vetor que vá da prosição 1 até a ultima do vetor
x(1:end-1) % Retorna um sub-vetor que vá da prosição 1 até a penultima posição do vetor
x(6:-2:1) % Retorna um subvetor, iniciando na ultima posição, decrementando de 2 em 2 até a primeira posição do vetor
x([1 5 2 1 1]) % Retorna um sub-vetor com os valores contidos nas sequintes posições [1 5 2 1 1]
