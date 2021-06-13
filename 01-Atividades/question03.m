% 3. Considere os vetores A = [1 2 3], B = [3 2 1] e a matriz M = [4 5 6 ; 6 5 3], digite
%    os próximos comandos e verifique se sua execução está correta, explique o porquê.
%    Dica: utilize o comando size() ou whos.

A = [1 2 3]
B = [3 2 1]
M = [4 5 6 ; 6 5 3]

%A + B      % Solução correta, dois vetores de mesma dimensão sã somados através de suas respectivas posições.

%A + M      % Solução correta, Cada linha da matriz foi somada com o vetor, onde ambos possuime o mesmo número de colunas

%A' + B     % Solução correta, Dizendo que o vetor transposta conjugada do vetor A, tornando como uma matriz de 1 coluna e 3 linhas
            % ao somar com um vetor que podemos chamar de uma matriz de 3 colunas e uma linha, temos como resultado uma matriz 3x3

            %M - [A;B]   % Solução correta, ao subtrair [A;B], que é a concatenação entre dois vetores e resulta uma matriz 2x3, de M, que é 
            % uma matriz 2x3. Temos como resultado uma matriz 2x3. 

%[A;B']     % Solução incorreta, não sendo possível concatenar um vetor A de posições, ou seja 4 colunas, a um vetor B, a qual foi aplicada 
            % a operação de transposta e se tornando uma matriz de 1 coluna e 3 linhas.

%[A;B]      % Solução correta, concatenando dois vetores de mesmas dimensões.

%M - 3      % Solução correta, cada posição da matriz M recebe um decremento de 3.

%A * B       % Solução incorreta, O número de colunas da matriz da A deve ser igual número de linhas da matriz da B.

%A.* B      % Solução correta, onde é realizado uma multiplicação ponto a ponto entre os dois vetores.
