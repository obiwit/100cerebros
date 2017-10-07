% 8. Considere uma linguagem com apenas 3 palavras {"um", "dois", "três"} e que permite sequências de 2
% palavras. Se todas as frases forem equiprováveis e as duas palavras na frase puderem ser iguais:

%% (a) Qual a probabilidade da sequência "um dois"?

% Casos possíveis : 9 (Arranjos com repetição de 3 elementos 3 a 3)
% Casos favoráveis: 1 (Sequência "um dois" [a ordem interessa])
%
% P = 1/9

%% (b) Qual a probabilidade de "um" aparecer pelo menos uma vez?

% 1 - P("um" nunca aparecer) = 1 - 4/9 = 5/9

%% (c) Qual a probabilidade de ocorrer "um" ou "dois"?

% P ("um" U "dois") = P("um") + P("dois") - P("um" ? "dois") = 1/3 + 1/3 -
% 2/9 == 4/9

% P("um") = 1/3 * 3/3 = 1/3
% P("dois") = P("um")
% P("um" ? "dois") = 2 casos possiveis ("um dois" e "dois um" em 9) == 2/9


%% (d) Qual o valor de P["sequência incluir a palavra um" | "sequência inclui palavra dois"]?
%% P("um" | "dois") =  P("um" ? "dois") / P ("dois") = (2/9) / (1/3) = 2/3

%% (e) Resolva a questão anterior para o caso de termos 10 palavras diferentes e sequências de 5 palavras
%      com ajuda de um programa que calcule exaustivamente todas as possibilidades.
%      Sugestão: use números de 1 a 10 para representar as palavras e use Matlab/Octave.
%      Tente criar uma função com os parâmetros de entrada que considere adequados.

N           = 1e3;
numWords    = 10;
numWordsSeq = 5;

experience  = ceil (numWords * rand(numWordsSeq, N));      % each column have 5 lines (words), each one with a the number from 1 to 10 representating the word
successes   = 0;                                 

%% (f) Repita a questão anterior para 11, 12, ... 20 palavras diferentes e represente a variação da probabilidade
%      num gráfico. Nota: Devido à memória necessária não se pode ter valores muito elevados.

%% (g) Adicione ao gráfico anterior, para comparação, a probabilidade se a linguagem não permitir repetições
%      das palavras.