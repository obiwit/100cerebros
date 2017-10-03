% Estima a probabilidade de uma experiência de Bernoulli por simulação.
% N : número de experiências
% p : probabilidade de sucesso
% k : número de sucessos
% n : número de lançamentos

% No exercício das moedas:
% p : probabilidade de cara
% k : numero de caras
% n : numero de lançamentos

function prob = BernoulliSimul(N, p, k, n)                         
    lancamentos   = rand(n,N) > p;    
    sucessos      = sum(lancamentos)==k;
    prob = sum(sucessos)/N;
end

