% Ex 1
p = 0.5;

k = 2;
n = 3;

prob = BernoulliRV_Prob(p, k, n)

% Ex 3
prob_peloMenos = 0;
for i=6:15
    prob_peloMenos = prob_peloMenos + BernoulliRV_Prob(0.5, i, 15);
end
prob_peloMenos
