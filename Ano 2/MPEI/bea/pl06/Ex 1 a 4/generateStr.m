function str = generateStr(minLength, maxLength, alphabet)

% generate random string with minLength to maxLength chars
length = floor(rand()*(maxLength-2)) + minLength;
str = '';
for i=1:length
    str(i) = alphabet(ceil(rand()*52));
end