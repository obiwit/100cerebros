function [ y ] = generateNumbersFromPmf( x, fx, N)
    % tic
    
    y    = rand(1, N);          
    fxc = cumsum(fx);
    % no need for an auxiliary matrix to store results, the y matrix will
    % be changed 
    
    for i = 1: N
        a = find(fxc > y(i));
        y(i) = x(a(1));
    end
    
    % toc
end

