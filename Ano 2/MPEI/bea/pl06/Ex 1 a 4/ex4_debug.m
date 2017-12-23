% Ex. 4 - special debug file to guarantee we are using n independent hash
% functions.
% Beatriz Borges, 79857 | Pedro Teixeira, 84715

clear; clc; close all;

hashes_num = 15;
elements = { 'Aveiro', 'Zurique', 'Portugal' };
bloom_filter = zeros(1, 8000);

bloom_pos = zeros(length(elements), hashes_num);

for el=1:length(elements)
    fprintf("%s\n", elements{el});
    for i=1:hashes_num
        % create unique string
        unique_el = [ elements{el} num2str(i^5) ];

        % add to the bloom string
        el_index = rem(string2hash(unique_el), length(bloom_filter)) + 1;
        bloom_pos(el, i) = el_index;
        fprintf("\t%d", el_index);
        bloom_filter(el_index) = 1;
    end
    fprintf("\n\n");
end