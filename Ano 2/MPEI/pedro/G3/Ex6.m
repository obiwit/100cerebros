% Beatriz Borges, 79857 | Pedro Teixeira, 84715

% 6. A distribuição de Poisson é uma forma limite da distribuição binomial
% (quando n -> infinto , p -> 0 e np permanece constante) e portanto pode
% ser usada para aproximar e simplificar os cálculos envolvidos com a
% binomial numa situação dessas.

% Num processo industrial de fabrico de chips, alguns aparecem defeituosos
% tornando-os inapropriados para comercialização. 

% É sabido que em média por cada mil chips há um defeituoso. Determine a
% probabilidade de numa amostra de 8000 aparecerem 7 defeituosos. Compare
% os resultados usando a distribuição correcta e a aproximação de Poisson.


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Probability using Binomial distribution (theoric value) 
% n = 8000
% p = 1 peça em 1000 = 1/1000

n = 8000;                 % number of Bernoulli experiences
p = 1/1000;
k = 7;
probBinomTheor = prod(n-k+1:n)/factorial(k) * p^k * (1-p)^(n-k);


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Probability using Binomial distribution (simulation) 
% n = 8000
% p = 1 peça em 1000 = 1/1000

N = 1e3;                  % Número de experiências
n = 8000;                 % number of Bernoulli experiences
p = 1/1000;
k = 7;
experience = rand(n, N);  % each column has 5 lines, each one with a faulty chip (< p) or a non-faulty chip (> p)

faultyChips = sum(experience < p); 

numSuccesses = faultyChips == k;
probBinomSimul = sum(numSuccesses) / N;


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Probability using Poisson distribution   
lambda = n*p; % lambda = np na distribuição de Poisson

probPoisson = (lambda^k/factorial(k)) * exp(-lambda);


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Print Probabilities
fprintf('Probabilidade de numa amostra de 8000 chips aparecerem 7 defeituosos: \n\tDistribuição binomial:\n\t\tTheoric: %f', probBinomTheor);
fprintf('\n\t\tSimulation: %f', probBinomSimul);
fprintf('\n\tDistribuição de Poisson: %f\n', probPoisson);