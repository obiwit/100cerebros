% Ex. 5
% Beatriz Borges, 79857 | Pedro Teixeira, 84715

% Tested using the same document twice (result MUST be 0)

% Open files
wordsFile1 = readFile ('pg17186.txt');
wordsFile2 = readFile ('pg31190.txt');
%wordsFile2 = readFile ('pg17186.txt');

% Add words of file 1 to Bloom Filter
n =  length(wordsFile1);                          %  number of words
m = n * 15;                                       %  size of the Bloom Filter (number of buckets)
k = round ((m / n) * log(2));                     % Optimal value of k: n/m ln(2)
bloomFilter = initBloomFilter(m);

fprintf('\nCreating Bloom Filter for words in file pg31190.txt...\n'); 
for i = 1: length(wordsFile1)
        bloomFilter = addBloomFilter(bloomFilter, k, wordsFile1{i});
end

fprintf('Verifying if the words in file pg17186.txt belongs to pg17186.txt...\n'); 
% Verify if the words of file 2 belong to the Bloom Filter
count = 0;
for i = 1: length(wordsFile2)
        contains = verify(bloomFilter, k, wordsFile2{i});
        % If doesn't belong to count
        if (contains ~= 1) 
               count = count + 1;
        end
end

fprintf('N�mero de palavras do segundo texto que n�o existem no primeiro: %d\n', count)