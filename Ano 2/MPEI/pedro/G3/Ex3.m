% 3. Considere 4 lançamentos de uma moeda equilibrada. Seja X a variável aleatória representativa do
%    número de coroas observados nos 4 lançamentos.

%% (a) Calcule a função de probabilidade pX(x) da variável aleatória X.
N = 1e5; % Number of experiences 
p = 0.5; % Probability of success
n = 4;   % Number of coin tosses

experience = rand(n, N); % Each column has 4 lines, each one with a number between 0 and 1. Values < 0.5 represent tails, > 0.5 heads
numTails   = sum(experience < 0.5);

pmf = histc(numTails, 0:n) / N;
stem(pmf, 'r')
ylabel('P(X=xi)')
xlabel('xi')
title('Probability Mass Function (PMF) of Random Variable X');
grid on

% (b) Calcule o valor esperado, a variância e o desvio padrão de X com base em pX(x).
expectedValue = sum([0:n].*pmf);
variance      = sum(([0:n]).^2.*pmf) - expectedValue ^ 2;
stdDeviation  = sqrt(variance);

fprintf ('Mean/Expected Value= %.3f\n', expectedValue)
fprintf ('Variance= %.3f\n', variance)
fprintf ('Standard Deviation= %.3f\n', stdDeviation)


%% (c) Identifique o tipo da distribuic¸ ˜ao da vari´avel aleat´oria X e escreva a express˜ao da respectiva func¸ ˜ao
% de probabilidade.

% A varíavel X é uma variável aleatória discreta Binomial.

%% (d) Substitua os valores admiss´?veis da v.a. X na func¸ ˜ao obtida acima e compare com os c´alculos
% efectuados na al´?nea a) desta quest˜ao.


%% (e) Com base na func¸ ˜ao de probabilidade desta distribuic¸ ˜ao, calcule:

    % i. A probabilidade de obter pelo menos 2 coroas;
    % ii. A probabilidade de obter at´e 1 coroa;
    % iii. A probabilidade de obter entre 1 e 3 coroas.