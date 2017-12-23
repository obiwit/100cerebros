% Ex. 1 e 2
% Beatriz Borges, 79857 | Pedro Teixeira, 84715

%% Crie, em Matlab, um conjunto de funcoes que implementem as
%  funcionalidades de um Bloom Filter basico. As funcoes devem ter os
%  parametros necessarios para que seja possivel criar Bloom filters de
%  diferentes dimensoes e usando numeros diferentes de funcoes de
%  dispersao (k).

% Sugestao 1: Criar pelo menos 3 funcoes [1, sec. 3.2]: uma para
% inicializar a estrutura de dados; outra para inserir um elemento (ou
% elementos) no filtro; uma terceira para verificar se um elemento pertence
% ao conjunto.
% Sugestao 2: Deve procurar, seleccionar e implementar uma funcao de
% dispersao que tenha bom desempenho.

clear; clc; close all;

members = {'Europa', 'Portugal', 'Suica', 'Alemanha', 'Franca', 'Espanha', ...
           'Italia', 'Belgica', 'Luxemburgo'};
       
test = {'Reino Unido', 'Polonia', 'Bea', 'Ivan', 'Russia', 'Suica' };

m = 100;
hashes_num = 3;

% initialize the bloom filter
bloom_filter = zeros(1, m, 'uint8');

for i=1:length(members)
    bloom_filter = addToBloomFilter(bloom_filter, hashes_num, members{i});
end
for i=1:length(test)
    if belongsToBloomFilters(bloom_filter, hashes_num, test{i})
        fprintf("O - %s belongs to the filter.\n", test{i});
    else
        fprintf("X - %s doesn't belong to the filter.\n", test{i});
    end
end