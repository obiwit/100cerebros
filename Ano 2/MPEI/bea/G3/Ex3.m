% Beatriz Borges, 79857 | Pedro Teixeira, 84715

% 3. Considere 4 lancamentos de uma moeda equilibrada. Seja X a variavel
% aleatoria representativa do numero de coroas observados nos 4 lancamentos.

%% (a) Calcule, por simulacao, a funcao de probabilidade pX(x) da variavel
% aleatoia X.

N = 1e5; % N = number of experiences
coinTosses = 4;

% estimate PMF of X
numberTails = sum(rand(coinTosses, N) < 0.5);
pmf_X = histc(numberTails, 0:4) / N;

% graph PMF of X
stem(0:coinTosses, pmf_X);
grid on;
xlabel('X Value (xi)');
ylabel('P(X = xi)');
title('Estimated Probability Mass Function (PMF) of Random Variable X');

%% (b) Calcule, com base no valor obtido na alinea anterior, o valor
% esperado, a variancia e o desvio padrao de X com base em pX(x).

X_values = 0:coinTosses;

mean = sum(X_values.*pmf_X);
variance = sum(X_values.^2.*pmf_X) - mean^2;
standard_deviation = sqrt(variance);

fprintf('X mean: %.3f\n', mean);
fprintf('X variance: %.3f\n', variance);
fprintf('X standard deviation: %.3f\n', standard_deviation);

%% (c) Identifique o tipo da distribuicao da variavel aleatoria X e escreva
% a expressao da respectiva funcao de probabilidade.

% X é uma variável aleatória discreta, mais concretamente, uma varivável
% aleatória Binomial.

% A função de probabilidade da variável aleatória binomial é dada por:
% P(X = k) = nchoosek(n, k)*(p)^(k)*(1-p)^(n-k)
% onde n são o número de experiências de Bernoulli independentes; k o número
% de sucessos dessas experiências; e p a probabilidade de sucesso.

%% (d) Substitua os valores admissıveis da v.a. X na funcao obtida acima e 
% compare com os calculos efectuados na alinea a) desta questao.

% P(X = x_i) = nchoosek(4, x_i)*((1/2)^4), se x_i pertence a {0, 1, 2, 3, 4}
% ( n = 4; p = 1/2; k pertence a {0, 1, 2, 3, 4} )

%               | 0.0625  se x_i = 0
%               | 0.2500  se x_i = 1
% p_X( x_i ) =  | 0.3750  se x_i = 2
%               | 0.2500  se x_i = 3
%               | 0.0625  se x_i = 4
%               | 0 para outros valores de x_i

%% (e) Com base na funcao de probabilidade desta distribuicao calcule:

%%% i. A probabilidade de obter pelo menos 2 coroas;

% P(X >= 2) = 1 - P(X < 2) = 1 - P(X = 1) - P(X = 0)
probAtLeastTwoTails = 1;
for i=0:1
    probAtLeastTwoTails = probAtLeastTwoTails - nchoosek(4, i)*((1/2)^4);
end

fprintf('Probability of 2 or more tails: %f\n', probAtLeastTwoTails);


%%% ii. A probabilidade de obter ate 1 coroa;

% P(X <= 1) = P(X = 0) + P(X = 1)
probOneOrLessTails = 0;
for i=0:1
    probOneOrLessTails = probOneOrLessTails + nchoosek(4, i)*((1/2)^4);
end

fprintf('Probability of 1 or less tails: %f\n', probOneOrLessTails);


%%% iii. A probabilidade de obter entre 1 e 3 coroas.

% P(1 <= X <= 3) = P(X = 1) + P(X = 2) + P(X = 3)
probOneToThreeTails = 0;
for i=1:3
    probOneToThreeTails = probOneToThreeTails + nchoosek(4, i)*((1/2)^4);
end

fprintf('Probability of 1, 2 or 3 tails: %f\n', probOneToThreeTails);