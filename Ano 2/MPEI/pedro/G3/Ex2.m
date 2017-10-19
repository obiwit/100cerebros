% 2. Considere uma caixa contendo 90 notas de 5 Euros, 9 notas de 50 e 1 de 100:
%% (a) Descreva o espaço de amostragem da experiência, retirar uma nota da caixa, e as probabilidades
% dos acontecimentos elementares.

% Espaço de amostragem S = {cada uma das 100 notas}
% Probabilidade de cada acontecimento elementar = 1 / número de notas = 1/100

%% (b) Considere a variável aleatória X como sendo o valor de uma nota retirada à sorte da caixa acima
% descrita. Descreva o espaço de amostragem de X e determine as probabilidades dos vÁrios valores de X.
 
% O espaço de amostragem da variável aleatória X, S_X, é o conjunto {5, 50, 100}
% que corresponde aos 3 diferentes valores das 100 notas existentes.

% A probabilidade de cada acontecimento elementar é P(V) = número de notas com
% esse valor V/ número total de notas.
% Pelo que P(5)   = 90 / 100 = 0.9; 
%          P(50)  = 9  / 100 = 0.09; 
%          P(100) = 1  / 100 = 0.01;


%% (c) Determine a função massa de probabilidade de X e efectue a sua representação gráfica em Matlab/Octave.
%                | 0.9   , xi = 5
% P (X = xi)  =  | 0.09  , xi = 50
%                | 0.01  , xi = 100
%                | 0     , outros valores de xi

stem([5, 50, 100], [0.9, 0.09, 0.01],)
ylabel('P(X=xi)')
xlabel('xi')
axis([0 100 0 1])
title('Probability Mass Function (PMF) of Random Variable X');
grid on