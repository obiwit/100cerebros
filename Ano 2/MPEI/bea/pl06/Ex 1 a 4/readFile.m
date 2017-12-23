function [ wordsFile ] = readFile(fileName)
file = fopen(fileName);
file_contents = fscanf(file, '%c', inf);
wordsFile = strsplit(file_contents);

end

