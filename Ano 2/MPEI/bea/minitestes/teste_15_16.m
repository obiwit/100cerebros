clear all
close all
clc

T = [.84 .1 0 .5; .1 .7 0 .1; .05 .1 .8 .1; .01 .1 .2 .3];
i0 = [1 2 10 5]';

current_T = T;
next_T = T*T;

max_tons = i0;
A = abs(current_T - next_T);
while max(A(:)) > 1e-5
    current_T = next_T; next_T = next_T * T;
    
    possible_maxs = next_T*i0;
    max_tons(possible_maxs > max_tons) = possible_maxs(possible_maxs > max_tons);
    
    A = abs(current_T - next_T);
end
disp(max_tons);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

T = [.84 .1  0 .5; ...
     .1  .7  0 .1; ...
     .05 .1 .8 .1; ...
     .01 .1 .2 .3];
 
i0 = [1 2 10 5]';

current_T = T;
next_T = T*T;

counter = 0;
A = abs(current_T - next_T);
while max(A(:)) > 1e-5
    
    current_tons = current_T*i0;
    if(current_tons(4) < 2)
        break;
    end
    
    current_T = next_T; next_T = next_T * T;
    A = abs(current_T - next_T);
    counter = counter + 1;
end
disp(counter)