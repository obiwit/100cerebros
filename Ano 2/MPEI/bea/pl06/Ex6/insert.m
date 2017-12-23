% Add to Counting Bloom Filter
% Beatriz Borges, 79857 | Pedro Teixeira, 84715

function [ B ] = insert ( B, k,  word )
    m = length(B);   
    wordToHash = word;
    
    for i = 1: k
        wordToHash = [wordToHash num2str(i)];           
        h = rem (string2hash(wordToHash), m) + 1;       % hash value between 1 and m
        B(h) = B(h) + 1;                                                        % counts
    end
end