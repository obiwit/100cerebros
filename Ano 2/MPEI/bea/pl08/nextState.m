% given a transition matrix and the current state,
% this function returns the next state
function state = nextState(H, currentState)
    % find the probabilities of reaching all pages starting at the current one
    probVector = H(:,currentState);  % Attention: it is a column vector
    % n is the number of pages, that is, H is n x n
    n = length(probVector);
    % pick the next page randomly according to those probabilities
    state = discrete_rnd(1:n, probVector);
end