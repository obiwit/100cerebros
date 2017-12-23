function str = generateV2Str(mean, variance, alphabet, distLettersPT)

% generate random normal string length
length = sqrt(variance) * (floor(randn()) + mean);

str = '';
for i=1:length
    letterIndex = find(distLettersPT > rand());
    str(i) = alphabet(letterIndex(1));
end