% 1. Implemente uma funcao que gere um vector de numeros aleatorios com base no metodo da Congruencia.
% A funcao deve permitir controlar o seu comportamento atraves dos parametros necessarios a definicao
% da formula usada neste metodo e tambem permitir definir o comprimento do vector a gerar. Sugestao: function y = lcg (X0,a,c,m,N).

% Utilizando a funcao:
%% (a) gere um vector de comprimento 1000 usando parametros a sua escolha e visualize o seu histograma.
% Quantos numeros diferentes obteve? Sugestao: experimente a funcao unique().

clear all;
clc;

y1 = lcg(1, 7^5, 0, 2^(31-1), 1e3);
subplot(2,1,1)
hist(y1)
title('With MATLAB values for a, c and m')
ylabel('Number of occurences')
xlabel('Values')
fprintf('Number of diferent numbers (MATLAB values): %d\n', sum(unique(y1))) 

x0 = 1;
a = 1e6;
c = 1e5;
m = 18e5;
N = 1e3;
y2 = lcg(x0, a, c, m, N);
subplot(2,1,2)
histogram(y2, 'FaceColor', 'r')
title('With my own values for a, c and m')
ylabel('Number of occurences')
xlabel('Values')
fprintf('Number of diferent numbers (my values): %d\n', sum(unique(y2))) 



%% (b) gere um conjunto de numeros aleatorios entre 0 e 1 com base nos numeros gerados na alinea a).
% Visualize o histograma e conte novamente os numeros diferentes.
y1 = lcg(1, 7^5, 0, 2^(31-1), 1e3) / 2^(31-1)  % / m to normalize values
hist(y1)
title('Normalized random numbers, with MATLAB values for a, c and m')
ylabel('Number of occurences')
xlabel('Values')
fprintf('Number of diferent numbers (MATLAB values): %d\n', sum(unique(y1))) 


%% (c) repita as alineas anteriores com os parametros utilizados na implementacao incluida na biblioteca
% NAG (ver apresentacao da TP).

% idk what NAG is