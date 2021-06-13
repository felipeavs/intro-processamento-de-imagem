% 3. Considere os vetores A = [1 2 3], B = [3 2 1] e a matriz M = [4 5 6 ; 6 5 3], digite
%    os pr�ximos comandos e verifique se sua execu��o est� correta, explique o porqu�.
%    Dica: utilize o comando size() ou whos.

A = [1 2 3]
B = [3 2 1]
M = [4 5 6 ; 6 5 3]

%A + B      % Solu��o correta, dois vetores de mesma dimens�o s� somados atrav�s de suas respectivas posi��es.

%A + M      % Solu��o correta, Cada linha da matriz foi somada com o vetor, onde ambos possuime o mesmo n�mero de colunas

%A' + B     % Solu��o correta, Dizendo que o vetor transposta conjugada do vetor A, tornando como uma matriz de 1 coluna e 3 linhas
            % ao somar com um vetor que podemos chamar de uma matriz de 3 colunas e uma linha, temos como resultado uma matriz 3x3

            %M - [A;B]   % Solu��o correta, ao subtrair [A;B], que � a concatena��o entre dois vetores e resulta uma matriz 2x3, de M, que � 
            % uma matriz 2x3. Temos como resultado uma matriz 2x3. 

%[A;B']     % Solu��o incorreta, n�o sendo poss�vel concatenar um vetor A de posi��es, ou seja 4 colunas, a um vetor B, a qual foi aplicada 
            % a opera��o de transposta e se tornando uma matriz de 1 coluna e 3 linhas.

%[A;B]      % Solu��o correta, concatenando dois vetores de mesmas dimens�es.

%M - 3      % Solu��o correta, cada posi��o da matriz M recebe um decremento de 3.

%A * B       % Solu��o incorreta, O n�mero de colunas da matriz da A deve ser igual n�mero de linhas da matriz da B.

%A.* B      % Solu��o correta, onde � realizado uma multiplica��o ponto a ponto entre os dois vetores.
