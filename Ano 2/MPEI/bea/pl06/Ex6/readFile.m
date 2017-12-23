% Reads a file and returns a cell array containing the words in the file
% Beatriz Borges, 79857 | Pedro Teixeira, 84715

function [ wordsFile ] = readFile(fileName)
fprintf('Reading file %s...\n', fileName);
file = fopen(fileName);
file_contents = fscanf(file, '%c', inf);
wordsFile = strsplit(file_contents);

end

