% probabilidade de sucesso (p) = 0.3
% número de amostras (n) = 5

% Número de experiências
N = 1e5;

% Alínea a (k = 3 peças defeituosas)
prob_a = BernoulliSimul(N, 0.7, 3, 5)

% Alínea b (k = 2 peças defeituosas)
prob_b = 0;
for i = 0: 2
    prob_b = prob_b + BernoulliSimul(N, 0.7, i, 5);
end
prob_b

% Alínea c (Histograma)
amostras      = rand(5, N) <= 0.3; %ou > 0.7
freqRelativas = sum(amostras);
hist(freqRelativas, 5)




