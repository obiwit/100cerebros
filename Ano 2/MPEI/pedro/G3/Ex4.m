% Beatriz Borges, 79857 | Pedro Teixeira, 84715

% 4. Sabendo que um processo de fabrico produz 30% de peças defeituosas e
% considerando a variável aleatória, X, que representa o número de peças
% defeituosas numa amostra de 5 peças tomadas aleatoriamente, obtenha
% (analiticamente e por simulação):

% X variável aleatória discreta binomial
% n = 5
% P(sucesso) = 0.3

% (a) o histograma representativo da distribuição de probabilidades de X;

% Simulated Probability
N = 1e4;                  % number of experiences
n = 5;                    % number of Bernoulli experiences
prob = 0.3;                  
experience = rand(n, N);  % each column has 5 lines, each one with a faulty (< 0.3) or good parts (> 0.3)
numPieces  = sum(experience < prob);

simProb = histc(numPieces, 0:n) / N;

% plot simulated PMF of X
figure(1);
subplot(1,2,1)
stem(0:n, simProb, 'r')
axis([-0.5 5.5 0 0.4])
ylabel('Probability')
xlabel('Num of faulty pieces in a 5 pieces sample')
title('Simulated Probability distribution of Random Variable X');
grid on;

% Theorical probability 
theoProb = 0:5;
theoProb = factorial(n)./(factorial(theoProb).*factorial(n-theoProb)).*prob.^(theoProb).*(1-prob).^(n-theoProb);

% plot PMF of X
subplot(1,2,2);
stem(0:n, theoProb, 'b')
axis([-0.5 5.5 0 0.4])
ylabel('Probability')
xlabel('Num of faulty pieces in a 5 pieces sample')
title('Theorical Probability distribution of Random Variable X');
grid on;

% (b) a probabilidade de, no máximo, 2 das peças de uma amostra serem defeituosas.
     
% Theorically
% P(X <= 2) = Sum((5 k) * 0.3^k * (0.7)^5-k), = 0.8369 para k = 0 -> 2
% n = 5; k = 0, 1, 2; p = 0.3
probT = 0;
for k = 0 : 2 
    probT = probT + factorial(5)/(factorial(5-k)*factorial(k))*0.3^k*(1-0.3)^(5-k);
end
fprintf('Probabilidade teorica de, no maximo, 2 das peças de uma amostra serem defeituosas: %.3f\n', probT);

% By simulation (using a)'s experience results)
successes  = sum(experience < 0.3) <= 2;
probS      = sum(successes) / N;
fprintf('\nProbabilidade por simulacao de, no maximo, 2 das peças de uma amostra serem defeituosas: %.3f\n', probS);

