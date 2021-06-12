% 6. Crie um vetor com o comando randi(100,1,10). Encontre qual é o maior valor neste
%    vetor e seu índice. Substitua pelo seu quadrado. Dica: verifique o funcionamento da
%    função max

vetor = randi(100,1,10)

max(vetor)

vetor(vetor==max(vetor)) = max(vetor)^2

