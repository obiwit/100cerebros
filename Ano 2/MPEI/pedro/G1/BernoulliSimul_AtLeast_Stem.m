% Estima a probabilidade de uma experiência de Bernoulli por simulação e faz um gráfico.
% N : numero de experiências
% p : probabilidade de sucesso
% atLeast : numero mínimo de sucessos
% n : número de lançamentos

% No exercício das moedas
% N : numero de experiências
% p : probabilidade de obter cara
% atLeast : numero mínimo de caras
% n : número de lançamentos

function BernoulliSimul_AtLeast_Stem (N, p, atLeast, n) 
    prob = zeros(1, n+1);
    for i = 0: n
       prob (i+1) = BernoulliSimul(N, p, atLeast, i);
    end
    stem(0:n, prob)
    title('By Simulation')
end