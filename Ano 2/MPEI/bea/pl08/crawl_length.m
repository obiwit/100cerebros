% length of a random walk on the graph according to state transition matrix H
% first = initial state, last = terminal or absorving state
function walk_length = crawl_length(H, first, last)

    last_state = first;
    walk_length = 0;
    
    % keep moving from page to page until page "last" is reached
    while (1)
        last_state = nextState(H, last_state);
        walk_length = walk_length + 1;
        if (last_state == last) 
            break; 
        end
    end
end