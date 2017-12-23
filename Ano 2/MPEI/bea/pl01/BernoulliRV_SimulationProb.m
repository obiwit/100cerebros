% p = success probability
% n = number of tries
% N = total sample space
% k = number of successes

function y = BernoulliRV_SimulationProb(N, p, k, n)
    lancamentos = rand(n,N) < p; 
    sucessos= sum(lancamentos)==k; 
    y = sum(sucessos)/N;
end