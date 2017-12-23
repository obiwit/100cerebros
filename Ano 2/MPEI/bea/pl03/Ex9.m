% Beatriz Borges, 79857 | Pedro Teixeira, 84715

% 9. Assumindo que o numero de erros tipograficos numa pagina de um livro
% tem uma distribuicao de Poisson com λ = 1, calcule a probabilidade de que
% exista pelo menos um erro numa determinada pagina.

% X ~ Poisson(1)
% P(X >= 1) = 1 - P(X = 0) = 1 - (1^0)*e^(-1)/0! = 1 - e^(-1)

probOneOrMoreErrors = 1 - exp(-1);

fprintf("Probability of getting one or more errors in a page: %.5f\n", probOneOrMoreErrors);