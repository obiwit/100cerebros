
%% Ex 2

% Gerar uma matriz com 3 linhas e 10000 colunas de numeros aleatorios
% entre 0.0 e 1.0 (ou seja, cada coluna representa uma experiencia):
experiencias = rand(15,10000);

% Gerar uma matriz com 3 linhas e 10000 colunas com o valor 1 se o valor
% da matriz anterior for superior a 0.5 (ou seja, se saiu cara) ou com o
% valor 0 caso contrario (ou seja, saiu coroa):
lancamentos = experiencias > 0.5;

% Gerar um vetor linha com 10000 elementos com a soma dos valores de cada
% coluna da matriz anterior (ou seja, o numero de caras de cada experiencia):
resultados= sum(lancamentos);

% Gerar um vetor linha com 10000 elementos com o valor 1 quando o valor do 
% vetor anterior e 2 (ou seja, se a experiencia deu 2 caras) ou 0 quando e 
% diferente de 2:
sucessos= resultados==6;

% Determinar o resultado final dividindo o numero de experiencias com 2
% caras pelo numero total de experiencias:
probSimulacao = sum(sucessos)/10000;


% Ex 2 - segunda versao (compacta)

N= 1e7;  % numero de experiencias 
p = 0.5; % probabilidade de cara 
k = 6;   % numero de caras
n = 15;  % numero de lancamentos 
lancamentos = rand(n,N) > p; 
sucessos= sum(lancamentos)==k; 
probSimulacao = sum(sucessos)/N;

% Ex 3

lancamentos = rand(n,N) > p; 
sucessos= sum(lancamentos)>=k; 
probSimulacao_peloMenos = sum(sucessos)/N;

%% Ex 4
N = 1000;
p = 0.5;
n = 20;
prob = zeros(1, n+1);
for i=0:n
    % para todos os valores desde 0 a n
    prob(i+1) = BernoulliRV_SimulationProb(N, p, i, n);
end
stem(0:n, prob)


