% portuguese alphabet
ptAlphabet = ['A':'Z', 'À', 'Á', 'Â', 'Ã', 'Ç', 'É', 'Ê', 'Í', 'Ó', 'Ô', ...
    'Õ', 'Ú', 'a':'z', 'à', 'á', 'â', 'ã', 'ç', 'é', 'ê', 'í', 'ó', 'ô', ...
    'õ', 'ú'];  


%  get portuguese letters alphabet distribution
files = {'pg21209.txt','pg26017.txt'};
pmfPT = pmfLetrasPT(files, alphabet);
distPT = cumsum(pmfPT);

% initialize other variables
n = 1000;
m = n/0.8;
djb2_counter = zeros(1,m);
sdbm_counter = zeros(1,m);

figure(1);
    
for i=1:n
    key = generateV2Str(10, 5, alphabet, distPT);
    
    djb2_value = rem(string2hash(key), m) + 1; % indices start at 1, not 0
    djb2_counter(djb2_value) = djb2_counter(djb2_value)+1;
    
    sdbm_value = rem(string2hash(key, 'sdbm'), m) + 1; % indices start at 1, not 0
    sdbm_counter(sdbm_value) = sdbm_counter(djb2_value)+1;
end

% djb2
subplot(221)
bar(djb2_counter)
title('djb2 - number of strings mapped to each position')

subplot(222)
hist(djb2_counter, 0:9)
title('djb2 - histogram of string in each position')

% sdbm
subplot(223)
bar(sdbm_counter, 'r')
title('sdbm - number of strings mapped to each position')

subplot(224)
hist(sdbm_counter, 0:9, 'r')
title('sdbm - histogram of string in each position')

%% Questões Finais
% Sim, a função de hash conseguiu distribuir as strings/chaves pela gama de
% valores possíveis de uma forma uniforme. Temos, de facto, uma
% distribuição uniforme das chaves pelos índices do array.