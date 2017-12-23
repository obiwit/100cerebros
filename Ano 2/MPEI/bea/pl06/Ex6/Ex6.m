% Ex. 6
% Beatriz Borges, 79857 | Pedro Teixeira, 84715

clc; clear; close all;

% Open file
fileName = 'pg17186.txt';
%fileName = 'pg17186_small.txt';          % quicker test
%fileName = 'test1.txt';                  % simple test 
wordsFile = readFile (fileName);

% Add words to Bloom Filter
n =  length(wordsFile);                         %  number of words
m = n * 15;                                     %  size of the Bloom Filter (number of buckets)
k = round ((m / n) * log(2));                   % �Optimal� value of k: n/m ln(2)
bloomFilter = init (m);

fprintf('\nCreating Bloom Filter for words in file %s...\n', fileName);
bar = waitbar(0,'Creating Bloom Filter for words...');            % wait bar
for i = 1: n
    bloomFilter = insert (bloomFilter, k, wordsFile{i});
    valueBar =  i / n;
    waitbar(valueBar, bar, sprintf('\nCreating Bloom Filter for words in file %s...\n%.2f%% done.', fileName, valueBar * 100))
end
waitbar(1, bar, sprintf('\nDone!'))
delete(bar)

fprintf('Number of occurrences of words: \n');
wordsFile = sort(unique(wordsFile));     % remove repeated words
n = length(wordsFile);
values = zeros(1, n);

for i = 1: n
    word = wordsFile{i};
    values(i) = count(bloomFilter, k, word);
    fprintf('\t%s -> %d\n', word, values(i));
end

[maxValue, maxIndex] = max(values);
fprintf('\n------------------------\nMost frequent word: %s (%d times)\n', wordsFile{maxIndex}, maxValue);
