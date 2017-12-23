% Ex. 3
% Beatriz Borges, 79857 | Pedro Teixeira, 84715

%% Para um teste mais exaustivo:
%%  (a) Gere m=1000 strings aleatorias com 40 caracteres (considere como
%   caracteres possiveis o conjunto de carateres maiusculos e algarismos) e
%   preencha um Bloom Filter, de tamanho n=8000. Este Bloom Filter deve ter
%   k = 3 funcoes de dispersao e as strings geradas devem obdecer as
%   diferentes probabilidades de ocorrencia das letras em portugues.

clear; clc; close all;
% portuguese alphabet
pt_alphabet = ['A':'Z', 'À', 'Á', 'Â', 'Ã', 'Ç', 'É', 'Ê', 'Í', 'Ó', 'Ô', ...
    'Õ', 'Ú', 'a':'z', 'à', 'á', 'â', 'ã', 'ç', 'é', 'ê', 'í', 'ó', 'ô', ...
    'õ', 'ú', '0':'9'];  

%  get portuguese letters alphabet distribution
files = {'pg21209.txt','pg26017.txt'};
pmfPT = pmfLetrasPT(files, pt_alphabet);
distLettersPT = cumsum(pmfPT);

% initialize the bloom filter
bloom_size = 8000;
hashes_num = 3;
bloom_filter = zeros(1, bloom_size, 'uint8');

% initialize str_members
string_num = 1000;
string_length = 40;

% add every string to the filter
for i=1:string_num   
    bloom_filter = addToBloomFilter(bloom_filter, hashes_num,  ...
        generateRandomPTString(string_length, pt_alphabet, distLettersPT));
end


%%  (b) Gere um segundo conjunto de 10000 strings aleatorias com 40 
%   caracteres e teste a pertenca das mesmas ao Bloom Filter que preencheu
%   antes. Quantas destas strings foram consideradas como pertencendo ao
%   conjunto com que o filtro foi preenchido? Estava a espera deste
%   resultado?

test_num = 10000;

% test if added strings belong to the filter
false_positives = 0;
for i=1:test_num
    
    test_str = generateRandomPTString(string_length, pt_alphabet, distLettersPT);
    
    if belongsToBloomFilters(bloom_filter, hashes_num, test_str) == 1
        fprintf("O ");
        false_positives = false_positives + 1;
    else
        fprintf("X ");
    end
    if rem(i, 50) == 0
        fprintf("\n");
    end
end

fprintf("\nPercentage of false positives: %4.3f%%\n", (false_positives/test_num)*100);


% Quantas destas strings foram consideradas como pertencendo ao conjunto
% com que o filtro foi preenchido? Estava a espera deste resultado?
%
% Cerca de 15%. Sim, pode talvez ter sido um pouco mais baixo que esperado,
% mas também foi usado um valor elevado de n (= 8000), portanto não é um
% resultado surpreendente.