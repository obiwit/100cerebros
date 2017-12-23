% Ex. 4
% Beatriz Borges, 79857 | Pedro Teixeira, 84715

%% 4) Repita o teste da questao anterior para um numero diferente de funcoes
% de dispersao (k = 1, . . . , 15), obtendo o numero de falsos positivos
% para cada k. Represente num grafico os valores obtidos, em funcao de k e
% sobreponha nesse grafico os valores teoricos (Assuma a independencia de
% hash functions e que cada uma seleciona cada posicao do bloom filter com
% igual probabilidade). Nota: Assume-se que as 10000 strings de teste sao
% todas diferentes das 1000 inseridas no Bloom filter. No entanto pode
% haver strings iguais.

clear; clc; close all;
% portuguese alphabet
pt_alphabet = ['A':'Z', 'À', 'Á', 'Â', 'Ã', 'Ç', 'É', 'Ê', 'Í', 'Ó', 'Ô', ...
    'Õ', 'Ú', 'a':'z', 'à', 'á', 'â', 'ã', 'ç', 'é', 'ê', 'í', 'ó', 'ô', ...
    'õ', 'ú', '0':'9'];  

%  get portuguese letters alphabet distribution
files = {'pg21209.txt','pg26017.txt'};
pmfPT = pmfLetrasPT(files, pt_alphabet);
distLettersPT = cumsum(pmfPT);

% setup the bloom filter
bloom_size = 8000;

% initialize str_members
string_num = 1000;
string_length = 40;

% other variables
test_num = 10000;
theorical_false_pos = zeros(15, 1);
false_positives = zeros (15, 1);



for hashes_num = 1:15
      
    bar = waitbar(0, sprintf('Generating the bloom filter for k=%d...', hashes_num));            % wait bar
    
    % initialize the bloom filter
    bloom_filter = zeros(1, bloom_size, 'uint8');
    
    % add every string to the filter
    for i=1:string_num   
        bloom_filter = addToBloomFilter(bloom_filter, hashes_num,  ...
            generateRandomPTString(string_length, pt_alphabet, distLettersPT));
    end
    
      % Show bloom filter's content
%     fprintf("|");
%     for j=1:bloom_size
%         fprintf("%d ", bloom_filter(1,j));
%     end
%     fprintf("|\n");
    
    % Get false positives
    theorical_false_pos(hashes_num, :) = (1 - exp(-hashes_num*string_num/test_num))^hashes_num;

    % test if added strings belong to the filter
    for i=1:test_num
        
        waitbar(i/test_num, bar);

        test_str = generateRandomPTString(string_length, pt_alphabet, distLettersPT);
        
        if (belongsToBloomFilters(bloom_filter, hashes_num, test_str) == 1)
            false_positives(hashes_num, :) = false_positives(hashes_num, :) + 1;
        end
        if rem(i, 10) == 0
            fprintf(".");
            
            if rem(i, 1000) == 0
                fprintf("\n");
            end
        end
    end
    
    waitbar(1, bar, sprintf('\nDone!'));
    delete(bar);

end

figure(1);
stem(false_positives/test_num);
hold on;
stem(theorical_false_pos);
title('Simulated and Theorical probabilities of false positives');
xlabel("Number of hash functions");
ylabel("False positive probability");
grid on;
axis([-.5 15.5 0 1]);

fprintf("\nPercentage of false positives: %4.2f%%\n", (false_positives/test_num)*100);