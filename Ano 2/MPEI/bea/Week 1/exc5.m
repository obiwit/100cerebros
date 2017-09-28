% p = success probability
% n = number of tries
% N = total sample space
% k = number of successes

p = 0.3;
n = 5;
N = 1e7;

%% probability of (exactly) three successes
k = 3;
theorical_prob = BernoulliRV_Prob(p, k, n);
simulation_prob = BernoulliRV_SimulationProb(N, p, k, n);

%% probability of at most two successes
theorical_prob = 0;
simulation_prob = 0;
for i = 0:2
    theorical_prob = theorical_prob + BernoulliRV_Prob(p, i, n);
    simulation_prob = simulation_prob + BernoulliRV_SimulationProb(N, p, i, n);
end
theorical_prob;
simulation_prob;

%% histogram

simulation_prob_vector = zeros(1, n+1);
for i=0:N
    simulation_prob_vector(i+1) = sum(rand(1,n) < p); 
end
histogram(simulation_prob_vector)
simulation_prob_vector    % for testing purposes