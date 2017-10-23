%% 1. Implemente uma funcao que gere um vector de numeros aleatorios com
% base no metodo da Congruencia. A funcao deve permitir controlar o seu
% comportamento atraves dos parametros necessarios a definicao da formula
% usada neste metodo e tambem permitir definir o comprimento do vector a
% gerar. Sugestao: 
%   function y = lcg (X0,a,c,m,N).
%   Utilizando a funcao:

%%(a) gere um vector de comprimento 1000 usando parametros a sua escolha e
% visualize o seu histograma. Quantos numeros diferentes obteve?
% Sugestao: experimente a funcao unique().

randNums = lcg(14, 7^5, 0, 2^31-1, 1e6) * (2^31-1); % lcg generates numbers between 0 and 1 ;)
figure;
subplot(1, 2, 1);
hist(randNums);
title('Pseudo-random numbers between 0 and m (= 2^(31)-1)');
fprintf('Number of unique numbers: %d\n', length(unique(randNums)));

%%(b) gere um conjunto de numeros aleatorios entre 0 e 1 com base nos
% numeros gerados na al?nea a). Visualize o histograma e conte novamente
% os numeros diferentes.
randNums = lcg(14, 7^5, 0, 2^31-1, 1e6);
subplot(1, 2, 2);
hist(randNums);
title('Pseudo-random numbers between 0 and 1');
fprintf('Number of unique numbers: %d\n', length(unique(randNums)));

%%(c) repita as al?neas anteriores com os parametros utilizados na
% implementacao inclu?da na biblioteca NAG (ver apresentacao da TP).