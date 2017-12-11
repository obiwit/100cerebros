% Considere a seguinte “dança” de grupos: Divide-se uma turma em 3 grupos (A, B e C) no inicio do
% semestre e no final de cada aula efectuam-se os seguintes movimentos:
% 1/3 do grupo A vai para o grupo B e outro 1/3 do grupo A vai para o grupo C;
% 1/4 do grupo B vai para A e 1/5 de B vai para C
% Metade do grupo C vai para o grupo B; a outra mantem-se no grupo C.

clc;

% (a) Crie em Matlab a matriz de transição. Confirme que se trata de uma matriz estocástica.
fprintf('-------------\nAlínea a:\n')
T = [1/3 1/4      0; 
       1/3  11/20 1/2; 
       1/3  1/5     1/2]

if (sum(T(:,1)) == sum(T(:,2)) && sum(T(:, 2)) == sum(T(:, 3)) && sum(T(:, 3)) == 1) fprintf('É uma matriz estocástica\n');
else fprintf('Não é uma matriz estocástica\n')
end

% (b) Crie o vector relativo ao estado inicial considerando que no total temos 90 alunos, o grupo A tem
% o dobro da soma dos outros dois e os grupos B e C tem o mesmo numero de alunos.
% Grupo B e C -> x alunos       ==> 18
% Grupo A       -> 2(x+x) = 4x  ==> 72
% Total             -> x + 4x = 90 <=> 5x = 90 <=> x = 18
fprintf('\n-------------\nAlínea b, c:\n')
X_B = [72/90; 18/90; 18/90]

% (c) Quantos elementos integrarao cada grupo no fim da aula 30 considerando como estado inicial o
% definido na al?nea anterior?

prob_B = T^30 * X_B
fprintf('Número de elementos no grupo A ao fim da aula 30, %.0f\n', prob_B(1) * 90);
fprintf('Número de elementos no grupo B ao fim da aula 30, %.0f\n', prob_B(2) * 90);
fprintf('Número de elementos no grupo C ao fim da aula 30, %.0f\n', prob_B(3) * 90);

% (d) Quantos elementos integrarao cada grupo no fim da aula 30 considerando que inicialmente se distribuiram
% os 90 alunos equitativamente pelos 3 grupos?

fprintf('\n-------------\nAlínea d:\n')
X_D = [72/90; 18/90; 18/90]
prob_D = T^30 * X_D
fprintf('Número de elementos no grupo A ao fim da aula 30, %.0f\n', prob_D(1) * 90);
fprintf('Número de elementos no grupo B ao fim da aula 30, %.0f\n', prob_D(2) * 90);
fprintf('Número de elementos no grupo C ao fim da aula 30, %.0f\n', prob_D(3) * 90);