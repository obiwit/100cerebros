% Beatriz Borges, 79857 | Pedro Teixeira, 84715

% 2. Considere uma caixa contendo 90 notas de 5 Euros, 9 notas de 50 e 1 de 100:

%% (a) Descreva o espaco de amostragem da experiencia, retirar uma nota da
% caixa, e as probabilidades dos acontecimentos elementares.

% O Espaco de Amostragem (S) é constituido por 100 acontecimentos
% elementares: retirar uma nota. Há 100 notas possíveis que podem ser
% retiradas, portanto a probabilidade de um único acontecimento elementar é
% um centésimo (1/100).



%% (b) Considere a variavel aleatoria X como sendo o valor de uma nota
% retirada a sorte da caixa acima descrita. Descreva o espaco de amostragem
% de X e determine as probabilidades dos varios valores de X.

% O Espaco de Amostragem da variável aleatória X (S_X) é contituído por 3
% acontecimentos possíveis, nomeadamente retirar uma nota de 5 Euros, uma
% nota de 50 Euros ou uma nota de 100 Euros. Assim, S_X = {5, 50, 100}.
% Porque há 100 notas possíveis, das quais 90 são notas de 5 Euros, 9 de 50
% Euros e apenas 1 de 100 Euros, as probabilidades associadas ao vários
% valores de X são as seguintes:
%   Probabilidade associada ao valor 5   = 0.9  (= 90/100)
%   Probabilidade associada ao valor 50  = 0.09 (= 9/100)
%   Probabilidade associada ao valor 100 = 0.01 (= 1/100)



%% (c) Determine a funcao massa de probabilidade de X e efectue a sua
% representacao grafica em Matlab/Octave.

%               | 0.9   se x_i = 5
% p_X( x_i ) =  | 0.09  se x_i = 50
%               | 0.01  se x_i = 100
%               | 0 para outros valores de x_i

stem([5, 50, 100], [0.9, 0.09, 0.01]);
axis([0, 100, 0, 1]);
grid on;
xlabel('X Value (xi)');
ylabel('P(X = xi)');
title('Probability Mass Function (PMF) of Random Variable X');