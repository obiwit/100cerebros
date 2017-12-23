% pick the next page randomly according to those probabilities
% states = vector with states (numbers), probVector = probability vector
function state = discrete_rnd(states, probVector)

transitionsProbs = cumsum(probVector);
state = find(rand() < transitionsProbs, 1);
