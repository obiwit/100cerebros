%% Exercício 1 (VALOR TEÓRICO)
p    = 0.5;
k    = 2;
n    = 3;
prob = factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k)

%% Exercício 1 (VALOR SIMULAÇÃO)

numExps = 1e8;

% Gerar uma matriz com 3 linhas e 10000 colunas de n´umeros aleat´orios
% entre 0.0 e 1.0 (ou seja, cada coluna representa uma experiˆencia):
experiencias = rand(3, numExps);

% Gerar uma matriz com 3 linhas e 10000 colunas com o valor 1 se o valor
% da matriz anterior for superior a 0.5 (ou seja, se saiu cara) ou com o
% valor 0 caso contr´ario (ou seja, saiu coroa):
lancamentos = experiencias > 0.5;

% Gerar um vetor linha com 10000 elementos com a soma dos valores de cada
% coluna da matriz anterior (ou seja, o n´umero de caras de cada experiˆencia):
resultados  = sum(lancamentos);

% Gerar um vetor linha com 10000 elementos com o valor 1 quando o valor do
% vetor anterior ´e 2 (ou seja, se a experiˆencia deu 2 caras) ou 0 quando ´e
% diferente de 2:
sucessos     = resultados==2;

% Determinar o resultado final dividindo o n´umero de experiˆencias com 2
% caras pelo n´umero total de experiˆencias:
probSimulacao = sum(sucessos)/numExps

%% Exercício 1 (VALOR SIMULAÇÃO : OUTRO CÓDIGO)
N = 1e5;                        % numero de experiˆencias
p = 0.5;                        % probabilidade de cara
k = 2;                          % n´umero de caras
n = 3;                          %n´umero de lanc¸amentos
lancamentos   = rand(n,N) > p;    
sucessos      = sum(lancamentos)==k;
probSimulacao = sum(sucessos)/N


