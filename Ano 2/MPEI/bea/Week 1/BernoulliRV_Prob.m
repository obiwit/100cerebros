% p = success probability
% n = number of tries
% k = number of successes

function y = BernoulliRV_Prob(p, k, n)
    y = factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k);
end