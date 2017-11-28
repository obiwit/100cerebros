% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Guião 5 : Segunda e terceira versões
% Métodos Probabilísticos para Engenharia Informática
% Pedro Teixeira, 84715, MIECT
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Portuguese Alphabet
alphabet = ['A':'Z' 'a':'z' 'À', 'Á', 'Â', 'Ã', 'Ç', 'É', 'Ê', 'Í', 'Ó', 'Ô', 'Õ', 'Ú', 'a':'z', 'à', 'á', 'â', 'ã', 'ç', 'é', 'ê', 'í', 'ó', 'ô','õ', 'ú'] 

%  ficheiros a serem processados (do projecto Gutemberg)
ficheiros={'pg21209.txt','pg26017.txt'};

% obter função massa de probabilidade (pmf em Inglês)
pmfPT=pmfLetrasPT(ficheiros, alphabet);

%  visualizar função massa de probabilidade
figure
stem(pmfPT)

% distribuição das letras no Português
distPT = cumsum(pmfPT);

n = 1000;
loadFactor = 0.8;
m= round(n/loadFactor);
contador_djb2 = zeros(1, m);
contador_sdbm = zeros(1, m);

for i = 1: n
    key = generateString(10,5,alphabet, distPT);
    value_djb2 = rem(string2hash(key), m) + 1;  % Ex. 2 : used rem because string2Hash returns a value between 0 and 2^32 - 1
    value_sdbm = rem(string2hash(key, 'sdbm'), m) + 1;
    contador_djb2(value_djb2)  = contador_djb2(value_djb2) + 1;
    contador_sdbm(value_sdbm) = contador_sdbm(value_sdbm) + 1;
    
    if rem (i, 25) == 0
        % djb2
        subplot(221)
        bar(contador_djb2, 'r')
        grid on
        title('Num of strings mapped by the hash function for each position: djb2')
        drawnow
        
        subplot(222)
        hist(contador_djb2, 0:9, 'b')
        grid on
        title('Histogram of string in each position: djb2')
        drawnow
        
        % sdbm
        subplot(223)
        bar(contador_sdbm, 'r')
        grid on
        title('Num of strings mapped by the hash function for each position: sdbm')
        drawnow
        
        subplot(224)
        hist(contador_sdbm, 0:9, 'r')
        grid on
        title('Histogram of string in each position: sdbm')
        drawnow
    end
 
end

% Usando a informacao sobre o numero de chaves que foram mapeadas para cada posicao do array
% apos a insercao de todas as chaves, estime e represente graficamente a func¸ao de distribuicao para
% a variavel aleatoria X definida como o numero de chaves mapeadas para uma posicao. 
% Qual seria o valor medio do comprimento das listas ligadas neste caso ? Qual a variancia ?

x = [0:9]; 

% Para o algoritmo djb2
figure
subplot(1,2,1)
successes_djb2 = histc(contador_djb2, 0:9);
pmfX_djb2 = successes_djb2 / m;
stem(0:9, pmfX_djb2);
grid on;
title('Random variable X pmf (djb2 case)');
axis([-0.5, 9.5, 0, 0.5]);
drawnow

fprintf('Algorithm djb2: ');
e_x = sum(x.*pmfX_djb2);
fprintf('\n\tE[X] = %f', e_x);
e_x2 = sum((x.^2).*pmfX_djb2);
fprintf('\n\tVar(X) = %f', e_x2 - e_x^2);
fprintf('\n')

% Para o algoritmo sdbm
subplot(1, 2, 2)
successes_sdbm = histc(contador_sdbm, 0:9);
pmfX_sdbm = successes_sdbm / m;
stem(x, pmfX_sdbm, 'r');
grid on;
title('Random variable X pmf (sdbm case)');
axis([-0.5, 9.5, 0, 0.5]);
drawnow

fprintf('Algorithm sdbm: ');
e_x = sum(x.*pmfX_sdbm);
fprintf('\n\tE[X] = %f', e_x);
e_x2 = sum((x.^2).*pmfX_sdbm);
fprintf('\n\tVar(X) = %f\n', e_x2 - e_x^2);
fprintf('\n')