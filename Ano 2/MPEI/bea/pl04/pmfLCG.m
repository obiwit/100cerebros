function y = pmfLCG(XI, pX, N)

    % generate numbers between 0 and 1
    randNums = rand(1,N);
    
    % map it to the PMF
    xCDF = cumsum(pX);
    
    % choose multiplication factor accordingly
    y = zeros(1, length(N));
    
    for i=1:length(XI)
        y = y + ((y == 0)&(randNums < xCDF(i))) * XI(i); 
    end
end