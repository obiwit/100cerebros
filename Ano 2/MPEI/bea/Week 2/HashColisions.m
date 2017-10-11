% Considere um array de tamanho 1000 que serve de base a implementacao de
% uma memoria associativa (por exemplo em Java) e que se pode assumir que
% a funcao de hash devolve um valor entre 0 e 999 com igual probabilidade.

%% (a) Qual a probabilidade de haver colisoes (pelo menos 2 keys mapeadas
% pela funcao de hash para a mesma posicao do array) em situacoes em que
% temos apenas 10 keys ?


% Number of throws: 10
% Number of possibilities: 1000

N = 1e5;
keys = 10;
possibleValuesRange = 1000;

simulation = floor(possibleValuesRange*rand(keys, N));
%uniqueKeys = zeros(1, N);
numUniqueKeys = 0;

for i=1:N
    %uniqueKeys(i) = length(unique(simulation(:,i)));
    if (length(unique(simulation(:,i))) == keys)
        numUniqueKeys = numUniqueKeys + 1;
    end
end

disp("Probability there are colisions: " + (1 - numUniqueKeys/N)); %0.04



%% (b) Faca um grafico da probabilidade de colisoes em funcao do numero
% de keys.

%N = 100;
possibleValuesRange = 1000;
N=1000;
keyRange = 1000;

numCollisions = zeros(1, keyRange);

for keyNum=1:keyRange

    simulation = floor(possibleValuesRange*rand(keyNum, N));
    
    for i=1:N
        if (length(unique(simulation(:,i))) ~= keyNum)
            numCollisions(keyNum) = numCollisions(keyNum) + 1;
        end
    end
end
%disp(numCollisions);
numCollisions = numCollisions / N;
%histogram(numCollisions, keyRange/2);
figure(1);
plot(numCollisions);
title("Alinea b");

%% (c) Para um numero fixo de keys, por exemplo 50, represente graficamente
% a variacao da probabilidade de nao haver qualquer colisao em funcao do
% tamanho do array.

N = 1e3;
keyNum = 50;
%possibleValuesRange = 1000;

numNoCollisions = zeros(1, N);

for possibleValuesRange=1:N % change array size

    simulation = floor(possibleValuesRange*rand(keyNum, N));
    
    for i=1:N
        if (length(unique(simulation(:,i))) == keyNum)
            numNoCollisions(possibleValuesRange) = numNoCollisions(possibleValuesRange) + 1;
        end
    end
    %numCollisions(N) = numCollisions(N) / N; % / keyNum % average collisions
end

numNoCollisions = numNoCollisions / N; % / keyNum % average collisions

%disp(numCollisions);
figure(2);
plot(numNoCollisions);