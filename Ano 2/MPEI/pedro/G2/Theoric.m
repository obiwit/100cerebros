% Calcula a probabilidade de uma experiência de Bernoulli.
% p : probabilidade de sucesso
% k : número de sucessos
% n : número de lançamentos

% p : probabilidade de cara
% k : numero de caras
% n : numero de lançamentos

function prob = Theoric (p, k, n)
    prob = factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k);
end