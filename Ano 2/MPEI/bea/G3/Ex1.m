% Beatriz Borges, 79857 | Pedro Teixeira, 84715

% 1. Considere a variavel aleatoria corespondente a face que fica visivel
% no lancamento de 1 dado:

%% (a) Efectue em Matlab/Octave um grafico representativo da funcao de
% massa de probabilidade de X. Nao se esqueca de ter os valores adequados
% no eixo dos xx;

N = 1e5; % N = number of experiences

% plot first graphic
figure(1);
subplot(1,2,1);

% estimate the probability of each possible die face 
numberOfFaces = 6;
dieFaces = 1:numberOfFaces;

simulatedDieFaces = ceil(numberOfFaces*rand(1, N));
faceProbability = histc(simulatedDieFaces, 1:6) / N;

% plot the estimated probabilities
stem(dieFaces, faceProbability);
title('Probability Mass Function (PMF) of Random Variable X');


%% (b) Num segundo grafico, na mesma figura, desenhe o grafico da funcao
% de distribuicao acumulada.

subplot(122);
stairs([0 dieFaces 7], [0 cumsum(faceProbability) 1]);
title('Cumulative Distribution Function (CDF) of Random Variable X');
