function [ wordsFile ] = readFile(fileName)
fprintf('Reading file %s...\n', fileName);
file = fopen(fileName);
file_contents = fscanf(file, '%c', inf);
wordsFile = strsplit(file_contents);

end

