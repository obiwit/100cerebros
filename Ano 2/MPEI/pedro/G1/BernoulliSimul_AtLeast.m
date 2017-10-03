% Estima a probabilidade de uma experiência de Bernoulli por simulação.
% N : numero de experiências
% p : probabilidade de sucesso
% atLeast : numero mínimo de sucessos
% n : número de lançamentos

% No exercício das moedas
% N : numero de experiências
% p : probabilidade de obter cara
% atLeast : numero mínimo de caras
% n : número de lançamentos

function prob = BernoulliSimul_AtLeast (N, p, atLeast, n)                         
    prob = 0;
    for i = atLeast: n
       prob = prob + BernoulliSimul(N, p, i, n);
    end
end