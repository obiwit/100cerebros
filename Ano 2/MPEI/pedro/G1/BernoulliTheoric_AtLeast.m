% Calcula a probabilidade de uma experiência de Bernoulli.
% p : probabilidade de sucesso
% atLeast : numero mínimo de sucessos
% n : número de lançamentos

% No exercício das moedas
% p : probabilidade de obter cara
% atLeast : numero mínimo de caras
% n : número de lançamentos

function prob = BernoulliTheoric_AtLeast (p, atLeast, n)                         
    prob = 0;
    for i = atLeast: n
       prob = prob + BernoulliTheoric(p, i, n);
    end
end