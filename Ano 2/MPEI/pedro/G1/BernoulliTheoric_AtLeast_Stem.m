% Calcula a probabilidade de uma experiência de Bernoulli e faz um gráfico.
% p : probabilidade de sucesso
% atLeast : numero mínimo de sucessos
% n : número de lançamentos

% No exercício das moedas
% p : probabilidade de obter cara
% atLeast : número mínimo de caras
% n : número de lançamentos

function BernoulliTheoric_AtLeast_Stem (p, atLeast, n) 
    prob = zeros(1, n+1);
    for i = 1: n
       prob (i) = BernoulliTheoric(p, atLeast, i);
    end
    stem(0:n, prob)
    title('By Theoric Formula')
end